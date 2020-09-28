#swarm -f Demultiplex2.sh --verbose 1 -g 50 -t 32 -b 100 --time 24:00:00 --job-name 2iCountDemultiplex --module samtools,python

cd /scratch/homanpj/iCLIP_pipeline/FASTQ/
iCount demultiplex \
-ml 15 \
/scratch/homanpj/iCLIP_pipeline/FASTQ/SIM_iCLIP_S1_R1_001.fastq.gz \
AGATCGGAAGAGCGGTTCAG \
NNNTGGCNN NNNCGGANN \
--out_dir "/scratch/homanpj/iCLIP_pipeline/FASTQ/samples1"

mv samples1/demux_NNNTGGCNN.fastq.gz samples1/Ro_Clip.fastq.gz
mv samples1/demux_NNNCGGANN.fastq.gz samples1/Control_Clip.fastq.g

iCount cutadapt \
-ml 1 \
--untrimmed_output /scratch/homanpj/iCLIP_pipeline/FASTQ/samples1/ro_untrimmed.fastq.gz \
--reads_trimmed /scratch/homanpj/iCLIP_pipeline/FASTQ/samples1/ro_trimmed.fastq.gz \
/scratch/homanpj/iCLIP_pipeline/FASTQ/samples1/Ro_Clip.fastq.gz \
AGATCGGAAGAGCGGTTCAG

iCount cutadapt \
-ml 1 \
--untrimmed_output /scratch/homanpj/iCLIP_pipeline/FASTQ/samples1/Control_untrimmed.fastq.gz \
--reads_trimmed /scratch/homanpj/iCLIP_pipeline/FASTQ/samples1/Control_trimmed.fastq.gz \
/scratch/homanpj/iCLIP_pipeline/FASTQ/samples1/Control_Clip.fastq.gz \
AGATCGGAAGAGCGGTTCAG
