#!/bin/sh

cd /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/
iCount demultiplex \
-ml 15 \
/data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/SIM_iCLIP_S1_R1_001.fastq.gz \
AGATCGGAAGAGCGGTTCAG \
NNNTGGCNN NNNCGGANN \
--out_dir "samples"

mv samples/demux_NNNTGGCNN.fastq.gz samples/Ro_Clip.fastq.gz
mv samples/demux_NNNCGGANN.fastq.gz samples/Control_Clip.fastq.gz


iCount cutadapt \
-ml 1 \
--untrimmed_output /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples1/ro_untrimmed.fastq.gz \
--reads_trimmed /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples1/ro_trimmed.fastq.gz \
/data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples1/Ro_Clip.fastq.gz \
AGATCGGAAGAGCGGTTCAG

cp /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples1/ro_untrimmed.fastq.gz /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/

gunzip -c /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/ro_untrimmed.fastq.gz > /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/ro_untrimmed.fastq

split --additional-suffix .fastq -l 12000000 ro_untrimmed.fastq Ro_Clip_iCountcutadpt.split.



