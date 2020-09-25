Data samples and novoalign index in /scratch/homanpj/iCLIP_pipeline

1) Demultiplex and trim
Demultiplex.sh
	Use iCount tools to demultiplex and trim fastq data
		-icount process for 
			demultipled
			trim
		-split Fastq
	input: /scratch/homanpj/iCLIP_pipeline/FASTQ/SIM_iCLIP_S1_R1_001.fastq.gz
	output: /scratch/homanpj/iCLIP_pipeline/FASTQ/samples1/ro_untrimmed.fastq.gz \
		    /scratch/homanpj/iCLIP_pipeline/FASTQ/samples1/ro_trimmed.fastq.gz
SplitFastq2.sh
	split Fastq files into smaller files for further processing (runs slowly if not split)

	input: /scratch/homanpj/iCLIP_pipeline/FASTQ/samples2/ro_untrimmed.fastq.gz
	output: /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.aa.fastq

2) Align Data
scriptloop_novoSAM_all_rRNAGencode.py
	create NovoAlign scripts for all split samples -> novo_SAM_i_all_GencoderRNAdb.sh
		input: /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.aa.fastq
		novoalign index: /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA
		output: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.aa.all.sam  

scriptloop_comb_all.py - create Combined Novoaliged file -> - Comb_iCount_all.sh
	create shell script for combine all aligned sam files 
		Input: /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cw.all.sam
		Output /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/Ro_Clip_iCountcutadpt_all.sam

3) Deduplicate Reads
scriptloop_sep_uniq_mm_all.py -> Separate_iCount_all.sh 
	create shell script that separates MM from unique reads and adds NH tag to Unique reads -  (Novoalign only adds NH tag to multi map reads)
		-separate MM and unique reads 
		-add NH:i:1 to unique reads
			sort
			index	
		-combine unique+NH and MultiMap
			sort 
			index
	input: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.aa.all.sam 
	output: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt.split.aa.all.unique.NH.mm.s.bam 
	 
scriptloop_comb_unique_NH_mm_all.py -> Comb_unique.NH.mm_all.sh
	Create shell script that Combines split files with NH tag added 
	input: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.aa.all.unique.NH.mm.s.bam
	output: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.bam
	

ddup_unique.NH.mm.sh
	sort
	Index
	umi_tools dedup
	sort
	index
		Input: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.bam
		Output: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam

4) Identify CLIP peaks
1_CombAll_novoalign_uniquebam_Find_Peaks.sh
	Uses samtools, bedrolls and custom R scripts to identify and count CLIP peaks
	- bedtools merge to find aligned regions
	- Rscript to create bed file of regions
	-bedtools coverage to get reads per region
	-Rsscrit to create table of CLIP locations

	- For control samples I do not find peaks but only count peaks from regions found from Ro samples
	
	Input: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam
	Output :Ro_Clip_iCountcutadpt_all.unique.NH.ddup.s.bam.PeakscountsUniq.txt	
			
	
			
