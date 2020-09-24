#swarm -f Comb_unique.NH_sort_all.sh --verbose 1 -g 50 -t 32 -b 10 --time 24:00:00 --job-name Sort_unique.NH_all.sh --module samtools,novocraft,umitools

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt_all.unique.NH.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt_all.unique.NH.s.bam

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt_all.unique.NH.s.bam

umi_tools dedup \
-I /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt_all.unique.NH.s.bam  \
--method unique \
--multimapping-detection-method=NH \
--umi-separator rbc: \
-S /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt_all.unique.NH.ddup.bam \
--log2stderr \
-L /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt_all.unique.NH.s.log

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt_all.unique.NH.ddup.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt_all.unique.NH.ddup.s.bam

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt_all.unique.NH.ddup.s.bam
