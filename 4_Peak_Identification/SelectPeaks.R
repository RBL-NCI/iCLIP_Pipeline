peaks=function(){
	args <- commandArgs(trailingOnly = TRUE)
	peaks.txt <- args[1]
	out <- args[2]
	minCount <- args [3]


library(GenomicRanges)
library('rtracklayer')

	peaksname=gsub("s.txt","s",peaks.txt)
	peaksname=strsplit(peaksname,"/")
	peaksname=peaksname[[1]][length(peaksname[[1]])]
	
w3peaksall=read.table(peaks.txt,header=F,sep="\t",check.names=FALSE)
colnames(w3peaksall)=c("chr","start","end","count","strand")
w3peaksall$name=paste(w3peaksall$chr,w3peaksall$start,sep = ":");w3peaksall$name=paste(w3peaksall$name,w3peaksall$end,sep = "-")
w3peaksall$length=w3peaksall$end-w3peaksall$start



#### Select loc with counts > 100 and length < 500

# chrm=c("chr1","chr2","chr3","chr4","chr5","chr6","chr7","chr8","chr9","chr10","chr11","chr12","chr13","chr14","chr15","chr16","chr17","chr18","chr19","chrX",'chrY')
# w3peaksall=w3peaksall[w3peaksall$chr%in%chrm,]
# w3peaks=w3peaksall[w3peaksall$count>0&w3peaksall$length<500,]

w3peaks=w3peaksall[w3peaksall$count>=minCount,]

w3peaks$ID=paste(w3peaks$name,w3peaks$strand,sep = "_")
w3peaks$Parent=w3peaks$ID
w3peaks$feature="gene"
w3peaks.GR <- GRanges(seqnames = w3peaks$chr, ranges=IRanges(start = w3peaks$start, end = w3peaks$end),strand = w3peaks$strand,mcols = w3peaks[,c("ID")],type=w3peaks$feature )

rtracklayer::export(w3peaks.GR, paste(out,peaksname,'.bed',sep=""),format = 'bed')

########
w3peaksgff=w3peaks
w3peaksgff$feature='exon'
rownames(w3peaksgff)=NULL
w3peaksgff$name=NA

# w3peaks$Parent=NA
# rownames(w3peaks)=NULL

w3peaksgff=rbind(w3peaks,w3peaksgff); w3peaksgff=w3peaksgff[order(w3peaksgff$ID,decreasing = T),] 

w3peaksgff.GR <- GRanges(seqnames = w3peaksgff$chr, ranges=IRanges(start = w3peaksgff$start, end = w3peaksgff$end),strand = w3peaksgff$strand,mcols = w3peaksgff[,c("Parent","ID","name")] ,type=w3peaksgff$feature)


rtracklayer::export(w3peaksgff.GR, paste(out,peaksname,'.gtf',sep=""),format = 'gtf')
rtracklayer::export(w3peaksgff.GR, paste(out,peaksname,'.gff3',sep=""),format = 'gff3')
}

peaks()

 