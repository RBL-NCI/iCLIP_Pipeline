#!/bin/bash
#swarm -f 2_CombAll_novoalign_Recomb_sepU_mm_Count_Peaks.sh --verbose 1 -g 50 -t 32 -b 10 --time 6:00:00 --gres=lscratch:200 --job-name Countclippeaks --module samtools,R,bedtools,subread
 

cd /scratch/homanpj/iCLIP_pipeline/peaks/

bedtools merge -c 6 -o count,distinct -bed -s -d -1 -i /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.bed | \
awk '{OFS="\t"; print $1":"$2"-"$3,$1,$2+1,$3,$5}'| awk 'BEGIN{print "ID","Chr","Start","End","Strand"}1' > /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.peaks.bedtools.SAF

featureCounts -F SAF \
-a /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.peaks.bedtools.SAF \
-O \
-s 1 \
-T 8 \
-R BAM \
--Rpath /scratch/homanpj/iCLIP_pipeline/peaks/ \
-o /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.FCountUnique.txt /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam

featureCounts -F SAF \
-a /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.peaks.bedtools.SAF \
-s 1 \
-M \
-O \
--minOverlap 1 \
-T 8 \
-R BAM \
--Rpath /scratch/homanpj/iCLIP_pipeline/peaks/ \
-o /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.FCountAll.txt /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam

featureCounts -F SAF \
-a /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.peaks.bedtools.SAF \
-s 1 \
-M \
-O \
--fraction \
--minOverlap 1 \
-T 8 \
-R BAM \
--Rpath /scratch/homanpj/iCLIP_pipeline/peaks/ \
-o /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.FCountAll_frac.txt /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam

featureCounts -F SAF \
-a /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.peaks.bedtools.SAF \
-s 1 \
-M \
-O \
--primary \
--minOverlap 1 \
-T 8 \
-R BAM \
--Rpath /scratch/homanpj/iCLIP_pipeline/peaks/ \
-o /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.FCountAll_primary.txt /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam

featureCounts -F SAF \
-a /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.unique.bam.peaks.bedtools.SAF \
-s 1 \
-M \
-O \
--primary \
--fraction \
--minOverlap 1 \
-T 8 \
-R BAM \
--Rpath /scratch/homanpj/iCLIP_pipeline/peaks/ \
-o /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.FCountAll_FracPrime.txt /scratch/homanpj/iCLIP_pipeline/peaks/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam
 
