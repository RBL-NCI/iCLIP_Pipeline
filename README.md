# iCLIP_Pipeline

Pipeline.sh
	icount process for 
		demultipled
		trim
	split
scriptloop_novoSAM_all_rRNAGencode.py
	create NovoAlign scripts for all split samples
scriptloop_comb_all.py - create Combined Novoaliged file
	create shell script for combine all aligned sam files - Comb_iCount_all.sh
		Input: /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cw.all.sam
		Output /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/Ro_Clip_iCountcutadpt_all.sam

scriptloop_Control_sep_uniq_mm_all.py - (Novoalign only adds NH tag to multi map reads)
	create shel script that separates MM from unique reads - Separate_Control_iCount_all.sh
		separate MM and unique reads ->	.bam file
		add NH:i:1 to unique reads
			sort
			index	
		combine unique+NH and MultiMap
			sort 
			index
	input: /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/bam/control/split_align/Control_Clip_iCountcutadpt.split.cw.all.sam
	output: /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/control/recomb_NHtag/Control_Clip_iCountcutadpt.split.cw.all.unique.NH.mm.s.bam 
	 
scriptloop_Control_comb_unique_NH_mm_all.py
	Create shell script that Combines split files with NH tag added -> Comb_unique.NH.mm_all.sh
	input: /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/control/recomb_NHtag/Control_Clip_iCountcutadpt.split.cw.all.unique.NH.mm.s.bam
	output: /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/control/recomb_NHtag/Control_Clip_iCountcutadpt_all.unique.NH.mm.bam
	

ddup_unique.NH.mm.sh
	sort
	Index
	umi_tools dedup
	sort
	index
		Input:/data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.bam 
		Output:/data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam
