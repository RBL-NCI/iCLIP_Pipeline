#swarm -f 3_ddup_unique.NH.mm.sh --verbose 1 -g 50 -t 32 -b 10 --time 24:00:00 --job-name dup_unique.NH.mm.sh --module samtools,novocraft,umitools

samtools merge /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.bam \
/scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/sep_MM_Uniq/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.bam \
/scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/sep_MM_Uniq/Ro/Ro_Clip_iCountcutadpt_all.mm.bam

samtools sort /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.bam > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.s.bam

samtools index /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.s.bam


umi_tools dedup \
-I /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.s.bam  \
--method unique \
--multimapping-detection-method=NH \
--umi-separator rbc: \
-S /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.bam \
--log2stderr \
-L /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.s.log

samtools sort /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.bam > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam

samtools index /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/Dedup/Ro/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam
