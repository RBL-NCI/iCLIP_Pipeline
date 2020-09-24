UntNts_CIGAR=function(){
  args <- commandArgs(trailingOnly = TRUE)
  peaks <- args[1] #/data/RBL_NCI/Wolin/Phil/mESC_small_RNA/Output_Custom/peaks/Comb.star_rg_added.sorted.dmark.tlen300.peaks.txt
  bamdir <- args[2] #/data/RBL_NCI/Wolin/Phil/mESC_small_RNA/Output_Custom/bam/
  samtools<- args[3] #samtools
  fafile<- args[4] #/data/RBL_NCI/Wolin/Phil/mESC_nascent/reference/fasta/mm10/fdb_igenomes_Mus_musculus_UCSC_mm10_Sequence_WholeGenomeFasta_genome
  bam=args[5] #w3.star_rg_added.sorted.dmark.bam
  ident_end=args[6]
  mode_End=args[7]
  inflect_End=args[8]
  rmvshrort=args[9]
  WT_3p_ends=args[10]
  nameadj=args[11]
  Peakmin=args[12]
  
  # Rscript UntNts_CIGAR_V6.R ./data/Output_Custom/comb.star_rg_added.sorted.dmark.tlen300.peaks.bed \
  # ../small_RNA_hiseq/bam_novo/ /Users/homanpj/Documents/Tools/samtools/bin/samtools \
  # ./inst/extdata/fdb_igenomes_Mus_musculus_UCSC_mm10_Sequence_WholeGenomeFasta_genome.fa 0 0 w3.star_rg_added.sorted.dmark.bam
  
  # 
  # rm(list=ls())
  
  library(VariantAnnotation,quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  library(GenomicRanges,quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  #library(WhopGenome)
  #library(trackViewer)
  #library(vcfR)
  library(seqinr,quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  library(ggplot2,quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  library("viridis",quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  library(edgeR,quietly = T,verbose = F)
  library('GenomicFeatures',quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  library('rtracklayer',quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  #library(GeneStructureTools)
  library(matrixStats,quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  library(plyr,quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  library(tidyr,quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  library(fitdistrplus,quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  library(stringr,quietly = T,verbose = F,warn.conflicts = F,logical.return = F)
  library(data.table)
  library(reshape)
  
  library(pacman)
  if(p_isinstalled(varhandle)==F){ p_install(varhandle) }
  library(varhandle)
  
  
  
  #' #' peaks=args[1]
  #' peaks='../../../small_RNA_hiseq/bam_novo/Output_newalignment/UntNts_CIGAR_V4/comb.star_rg_added.sorted.dmark.2nd.tlen300.peaks.bed'
  #' #'
  #' #' bamdir=args[2]
  #' bamdir="../../../small_RNA_hiseq/bam_novo/Output_newalignment/UntNts_CIGAR_V4/"
  #' #'
  #' #' samtools=args[3]
  #' samtools="/Users/homanpj/Documents/Tools/samtools/bin/samtools"
  #' #'
  #' #' fafile=args[4]
  #' fafile='../inst/extdata/fdb_igenomes_Mus_musculus_UCSC_mm10_Sequence_WholeGenomeFasta_genome.fa'
  #' #'
  #' blastn='/Users/homanpj/Documents/Tools/ncbi-blast-2.9.0/ncbi-blast-2.9.0+/bin/blastn'
  #' blastdb='../inst/extdata/'
  #' #' count_dup=args[5]
  #' count_dup=1
  #' #' count_multimap=args[6]
  #' count_multimap=1
  #' 
  #' #' bam=args[7]
  #' # bam="w3.star_rg_added.sorted.dmark.uniq.dwnsmpl.bam"
  #' # bam="w3.star_rg_added.sorted.dmark.uniq.2nd.bam"
  #' 
  #' #' ident_end=args[8]
  #' ident_end=0
  #' 
  #' #' mode_End=[9]
  #' mode_End=1
  #' 
  #' #' inflect_End=args[10]
  #' inflect_End=0
  #' 
  #' #' rmvshrort=args[11]
  #' rmvshrort=0
  #' 
  #' #' WT_3p_ends=arg[12]
  #' WT_3p_ends="w3.star_rg_added.sorted.dmark.2nd.bam.3p.test_V6_AUcnt_novoEnd.txt"
  #' 
  #' #' nameadj=args[13]
  #' nameadj=".test_V6_AUcnt_wt3End"
  
  
  
  ################################################################################################################
  ################################################################################################################
  CIGARadj=1
  count_dup=1
  count_multimap=1
  End5p_count=0
  unannot_count=0
  min_nt_cnt_per_pk=-1
  min_reads_per_nt=0
  use_samtools=0
  downsample=0
  creatUniq=1
  fig=0
   
  ################################################################################################################
  ######################################################################################################
  
  
  #' CIGARadj=args[8]
  # bam=paste(bamdir,bam,sep = "")

  ############### 
  bamName=strsplit(bam,"/")[[1]]
  bamName=bamName[length(bamName)]   
  bamOut=paste0(bamdir,bamName)
  
  ### check to see if anything was done to alter original bam file if not create a soft link to original file

    
  ############### 
  
  peaks=read.table(peaks);colnames(peaks)=c("chr","start","end",'V4','V5',"strand")
  # peaks=peaks[peaks$chr!="chr_rDNA",]
  peaks=peaks[peaks$V4>=Peakmin,]
  
   
  
  ################################################################################################################
  ######################################################################################################
  
  col=c('Location','Type','UnannotNT_Start','total_reads')
  

  outAnnotRNA_3p=as.data.frame(matrix(nrow=nrow(peaks),ncol = 4))
  colnames(outAnnotRNA_3p)=col
  

  
  ################################################################################################################
  #### Subset counts for annotated peaks
  ################################################################################################################
  
  
  
  peaks.GR <- GRanges(seqnames = as.character(peaks$chr), ranges=IRanges(start = as.numeric(peaks$start), end = as.numeric(peaks$end)),strand = peaks$strand )
  
  
  
  rmvfiles=function(){
    if(file.exists(paste(bam,".bam",sep = ""))){file.remove(paste(bam,".bam",sep = ""))}
    if(file.exists(paste(bam,".bam.bai",sep = ""))){file.remove(paste(bam,".bam.bai",sep = ""))}
    if(file.exists(paste(bam,".uniq.bam.subset.bam",sep = ""))){file.remove(paste(bam,".uniq.bam.subset.bam",sep = ""))}
    
    if(file.exists(paste(bam,'.peaktemp.bed',sep=""))){file.remove(paste(bam,'.peaktemp.bed',sep=""))}
    if(file.exists(paste(bam,'.fastatemp.fa',sep=""))){file.remove(paste(bam,'.fastatemp.fa',sep=""))}
    if(file.exists(paste(bam,".SCadj.tmp",sep = ""))){file.remove(paste(bam,".SCadj.tmp",sep = ""))}
    if(file.exists(paste(bam,".SCadj.tmp.bam",sep = ""))){file.remove(paste(bam,".SCadj.tmp.bam",sep = ""))}
    if(file.exists(paste(bam,".SCadj.tmp.bam.bai",sep = ""))){file.remove(paste(bam,".SCadj.tmp.bam.bai",sep = ""))}
    
    if(file.exists(paste(bam,".subset.sam",sep = ""))){file.remove(paste(bam,".subset.sam",sep = ""))}
    if(file.exists(paste(bam,".subset.bam",sep = ""))){file.remove(paste(bam,".subset.bam",sep = ""))}
    if(file.exists(paste(bam,".subset.bam.bai",sep = ""))){file.remove(paste(bam,".subset.bam.bai",sep = ""))}
    if(file.exists(paste(bam,".subset.adjflag.txt",sep = ""))){file.remove(paste(bam,".subset.adjflag.txt",sep = ""))}
    if(file.exists(paste(bam,".subset.adjflag2.txt",sep = ""))){file.remove(paste(bam,".subset.adjflag2.txt",sep = ""))}
    if(file.exists(paste(bam,".subset.adjflagC.txt",sep = ""))){file.remove(paste(bam,".subset.adjflagC.txt",sep = ""))}
    if(file.exists(paste(bam,".subset.bam.bai",sep = ""))){file.remove(paste(bam,".subset.bam.bai",sep = ""))}
    if(file.exists(paste(bam,".subset.bam.subblast.bam",sep = ""))){file.remove(paste(bam,".subset.bam.subblast.bam",sep = ""))}
    if(file.exists(paste(bam,".subset.bam.subblast.bam.blast.txt",sep = ""))){file.remove(paste(bam,".subset.bam.subblast.bam.blast.txt",sep = ""))}
    
    if(file.exists(paste(bam,".ntcnt.tmp",sep = ""))){file.remove(paste(bam,".ntcnt.tmp",sep = ""))}
    if(file.exists(paste(bam,".uniq.bam.subset.sam",sep = ""))){file.remove(paste(bam,".uniq.bam.subset.sam",sep = ""))}
    if(file.exists(paste(bam,".headr.tmp",sep = ""))){file.remove(paste(bam,".headr.tmp",sep = ""))}
    
    if(file.exists(paste(bam,".blast.txt",sep = ""))){file.remove(paste(bam,".blast.txt",sep = ""))}
    
    
  }
  
  
  for (nx in (1:nrow(peaks))) {
    # for (nx in (nx):nrow(peaks)) {
    l=ls()    
    rm(list=l[l%in%c('nx','bam',"bamU",'peaks','nameadj','f','blastn','blastdb','bamOut',
                     'outAnnotRNA_3p','outAnnotRNA_3p_short','outAnnotRNA_3p_long','outAnnotRNA_3p_0','outAnnotRNA_3p_longU','outAnnotRNA_3p_0U',
                     'bamdir','samtools','bedtools','fafile','count_dup','count_multimap','rmvshrort','fig','CIGARadj','ident_end','inflect_End',
                     'mode_End','End5p_count','unannot_count','min_nt_cnt_per_pk','min_reads_per_nt','small_RNA.GR','use_samtools','rmvfiles','alignr','bamQ')==F])
    # print(nx)
    
    if ((nx/1000)%in%c(1:50000)) {        
      print(bam)
      print(paste0(round((nx/nrow(peaks)*100),1)," %"))
      print(nx)}
    #### Select Peak locations
    p=peaks[nx,]

    rmvfiles()
    
    write.table(p,file=paste(bam,'.peaktemp.bed',sep=""),sep="\t",row.names = F,col.names=F,quote=F)
    
    pl=paste(p$chr,p$start,sep = ":")
    pl=paste(pl,p$end,sep="-")
    
    bamout=paste(bam,".out.sam",sep = "")
    
    
    ################################################################################################################
    p.GR <- GRanges(seqnames = as.character(p$chr), ranges=IRanges(start = as.numeric(p$start), end = as.numeric(p$end)),strand = as.character(p$strand) )
    
    ### ### ### ###
    # gr =p.GR;
    # gr2=small_RNA.GR
    # xo=as.data.frame(GenomicRanges::findOverlaps(gr,gr2,type = "any",ignore.strand=F))
    # 
    # qh=as.data.frame(gr[xo$queryHits],row.names = NULL)
    # sh=as.data.frame(gr2[xo$subjectHits],row.names = NULL)
    # 
    # if (nrow(sh)==0) {
    #   sh2=as.data.frame(matrix(ncol=ncol(sh),nrow=1))
    #   colnames(sh2)=colnames(sh);sh=sh2;remove(sh2)
    #   sh$seqnames=NA
    #   sh$start=NA
    #   sh$end=NA
    #   sh$strand=p$strand
    #   sh$type="NoAnnot"}
    
    
    
    ##########################################################################################################
    #### determine if mode was identified and select mode from file
    ################################################################################################################    
    
    if (ident_end==0){
      
      WT_3p_ends_sub=WT_3p_ends[grep(paste0(p$chr[1],":",p$start[1],"-",p$end[1]),WT_3p_ends$Location ),]
      
      if (nrow(WT_3p_ends_sub)>1) {print("Error too many ends selected"); print(xxxx)}
      
      m=WT_3p_ends_sub$mode
      m2=WT_3p_ends_sub[,'mode.1']
      
    }
    
    ##########################################################################################################
    #### Subset BAM
    ################################################################################################################
    
    samH=paste(samtools,"view -H", bam,' >',paste(bam,".headr.tmp",sep = ""),sep = " ")
    system(samH,wait=T)
    
    ####################################
    ## select peak region
    ####################################
    ## select only reads that match strand of peak
    if (p$strand=="+") {

      sn=system(paste0(samtools," view -h -c ",bam," ",pl), intern = T)
    }
    if (p$strand=="-") {

      sn=system(paste0(samtools," view -h -c ",bam," ",pl), intern = T)
    }
    

    
    
    outAnnotRNA_3p[nx,1]=paste0(p$chr[1],":",p$start[1],"-",p$end[1],"_",p$strand[1])
    outAnnotRNA_3p[nx,2]=NA
    outAnnotRNA_3p[nx,3]=NA
    outAnnotRNA_3p[nx,4]=sn
    
    ##################################################################################################
    
    
    rmvfiles()
    
    # if (nx==2) {break}
    
  }
  # outAnnotRNA_3p=outAnnotRNA_3p[,colnames(outAnnotRNA_3p)%in%c('dist_length','dist_UTnt')==F]
  # outAnnotRNA_3p=outAnnotRNA_3p[is.na(outAnnotRNA_3p[,'UnannotNT_Start'])==F,]
  write.table(outAnnotRNA_3p,file=paste0(bamOut,nameadj,".txt"), sep = "\t", row.names = FALSE, col.names = T, append = F, quote= FALSE)
  
  
  rmvfiles()
}
UntNts_CIGAR()