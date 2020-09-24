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
	
	w3peaksall=read.table(peaks.txt,header=F,sep="\t",check.names=FALSE,stringsAsFactors = F)
	colnames(w3peaksall)=c("chr","start","end","count","strand")
	w3peaksall$name=paste0(w3peaksall$chr,":",(w3peaksall$start+0),"-",w3peaksall$end)
	w3peaksall$ID=paste0(w3peaksall$chr,":",(w3peaksall$start+0),"-",w3peaksall$end)
	
	w3peaksall$length=w3peaksall$end-w3peaksall$start
	w3peaks_newtrim=w3peaksall[w3peaksall$count>=minCount,]
	# w3peaks_newtrim=w3peaks_newtrim[!duplicated(w3peaks_newtrim),]
	# w3peaks_newtrim2=w3peaks_newtrim[unique(w3peaks_newtrim$ID),]
	
	
	# w3peaks_newtrim$ID2=paste(w3peaks_newtrim$name,w3peaks_newtrim$strand,sep = "_")
	# w3peaks_newtrim$Parent=w3peaks_newtrim$ID
	w3peaks_newtrim$feature="gene"
	
	w3peaks_newtrim.GR <- GRanges(seqnames = w3peaks_newtrim$chr, ranges=IRanges(start = w3peaks_newtrim$start, end = w3peaks_newtrim$end),strand = w3peaks_newtrim$strand,mcols = w3peaks_newtrim[,c("ID")],type=w3peaks_newtrim$feature )
rtracklayer::export(w3peaks_newtrim.GR, paste(out,peaksname,'.bed',sep=""),format = 'bed')

########
# w3peaksgff=w3peaks
# w3peaksgff$feature='exon'
# rownames(w3peaksgff)=NULL
# w3peaksgff$name=NA
# 
# # w3peaks$Parent=NA
# # rownames(w3peaks)=NULL
# 
# w3peaksgff=rbind(w3peaks,w3peaksgff); w3peaksgff=w3peaksgff[order(w3peaksgff$ID,decreasing = T),] 
# 
# w3peaksgff.GR <- GRanges(seqnames = w3peaksgff$chr, ranges=IRanges(start = w3peaksgff$start, end = w3peaksgff$end),strand = w3peaksgff$strand,mcols = w3peaksgff[,c("Parent","ID","name")] ,type=w3peaksgff$feature)
# 
# 
# rtracklayer::export(w3peaksgff.GR, paste(out,peaksname,'.gtf',sep=""),format = 'gtf')
# rtracklayer::export(w3peaksgff.GR, paste(out,peaksname,'.gff3',sep=""),format = 'gff3')
}

peaks()

 