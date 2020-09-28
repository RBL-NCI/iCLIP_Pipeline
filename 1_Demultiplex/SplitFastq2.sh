#swarm -f SplitFastq2.sh --verbose 1 -g 50 -t 32 -b 100 --time 24:00:00 --job-name SplitFastq2 --module samtools,python

cp /scratch/homanpj/iCLIP_pipeline/FASTQ/samples2/ro_untrimmed.fastq.gz /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/

gunzip -c /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/ro_untrimmed.fastq.gz > /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/ro_untrimmed.fastq

cd /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro
split --additional-suffix .fastq -l 12000000 /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/ro_untrimmed.fastq Ro_Clip_iCountcutadpt.split.


mv Ro_Clip_iCountcutadpt* /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/
