Data samples and novoalign index in /scratch/homanpj/iCLIP_pipeline

1) Demultiplex and trim
Demultiplex.sh
	Use iCount tools to demultiplex and trim fastq data
		-icount process for 
			demultipled
			trim
		-split Fastq
	input: /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/SIM_iCLIP_S1_R1_001.fastq.gz
	output:/data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cw.fastq

2) Align Data
scriptloop_novoSAM_all_rRNAGencode.py
	create NovoAlign scripts for all split samples -> novo_SAM_i_all_GencoderRNAdb.sh
		input:/data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cw.fastq
			:/data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA
		output:/data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cw.all.sam 
scriptloop_comb_all.py - create Combined Novoaliged file -> - Comb_iCount_all.sh
	create shell script for combine all aligned sam files 
		Input: /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cw.all.sam
		Output /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/Ro_Clip_iCountcutadpt_all.sam

3) Deduplicate Reads
scriptloop_sep_uniq_mm_all.py -> Separate_iCount_all.sh 
	create shel script that separates MM from unique reads -  (Novoalign only adds NH tag to multi map reads)
		-separate MM and unique reads 
		-add NH:i:1 to unique reads
			sort
			index	
		-combine unique+NH and MultiMap
			sort 
			index
	input: /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/bam/ro/split_align/Ro_Clip_iCountcutadpt.split.cw.all.sam
	output: /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/ro/recomb_NHtag/Ro_Clip_iCountcutadpt.split.cw.all.unique.NH.mm.s.bam 
	 
scriptloop_comb_unique_NH_mm_all.py -> Comb_unique.NH.mm_all.sh
	Create shell script that Combines split files with NH tag added 
	input: /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/ro/recomb_NHtag/Ro_Clip_iCountcutadpt.split.cw.all.unique.NH.mm.s.bam
	output: /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/ro/recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.bam
	

ddup_unique.NH.mm.sh
	sort
	Index
	umi_tools dedup
	sort
	index
		Input:/data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.bam 
		Output:/data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam
