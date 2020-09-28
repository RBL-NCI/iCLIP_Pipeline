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


3) Deduplicate Reads
1_scriptloop_sep_uniq_mm_all -> 1_Separate_iCount_all.sh 
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
	 
2a_scriptloop_comb_unique_all.py -> 2a_Comb_unique.NH.mm_all.sh
	Create shell script that Combines split multimap files with NH tag added 
	input: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/sep_MM_Uniq/Ro/multimap/Ro_Clip_iCountcutadpt.split.aa.all.mm.bam
	output: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/sep_MM_Uniq/Ro/Ro_Clip_iCountcutadpt_all.mm.bam
	
2b_scriptloop_comb_mm.py -> 2b_Comb_mm_all.sh

3_ddup_unique.NH.mm.sh
	combine unique and multimapped reads
	sort
	Index
	umi_tools dedup
	sort
	index
		Input: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.bam
		Output: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam

4) Identify / Count CLIP peaks
1_Find_Peaks.sh
	Uses samtools, bedtools and custom R scripts to identify and count CLIP peaks
	- bedtools merge to find aligned regions
	- SelectPeaks.R to create bed file of regions
	-bedtools coverage to get reads per region
	-CreateTable.R to create table of CLIP locations

	- For control samples I do not find peaks but only count peaks from regions found from Ro samples
	
	Input: /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam
	Output: /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam.PeakcountsUniq	
			

2_Count_Peaks.sh
	use featureCounts to count reads in each peak
		Unique Reads
		Unique + multimap
		Unique + scaled multimap 
		Unique + Primary multimap 
		Unique +  scaled Primary multimap 

	Input: /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.bed
	Output: /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.FCountXXXXX.txt		
