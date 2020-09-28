#swarm -f 1_CombAll_novoalign_Recomb_sepU_mm_Find_Peaks.sh --verbose 1 -g 50 -t 32 -b 50 --time 6:00:00 --gres=lscratch:200 --job-name Findclippeaks_recomb --module samtools,R,bedtools
  
###############################
### separate Unique and Multimap reads
  
samtools view -H /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.header.txt

samtools view /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam  | grep -v -w 'NH:i:1' | cat /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.header.txt - |  samtools sort | samtools view -Sb > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/multimap/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.mm.bam

samtools index /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/multimap/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.mm.bam

samtools view /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam  | grep -w 'NH:i:1' | cat /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.header.txt - |  samtools sort | samtools view -Sb > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/unique/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam
 
 samtools index /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/unique/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam
 
###############################
### Peak identification step
#### for multiple Experimental samples Combine all experimental samples to find peaks

bedtools bamtobed -i /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/unique/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam > /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.bed

bedtools merge -c 6 -o count,distinct -d -1 -i /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.bed -s > /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.peaks.txt

Rscript /data/RBL_NCI/Wolin/Phil/mESC_clip/scripts/SelectPeaks.R /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.peaks.txt /scratch/homanpj/iCLIP_pipeline/peaks/


Rscript /scratch/homanpj/iCLIP_pipeline/4_Peak_Identification/CreateTable.R \
/scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.peaks.txt \
/scratch/homanpj/iCLIP_pipeline/peaks/ \
/scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam \
.PeakcountsUniq 1
