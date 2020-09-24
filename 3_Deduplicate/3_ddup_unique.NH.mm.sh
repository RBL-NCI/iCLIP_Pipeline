#swarm -f ddup_unique.NH.mm.sh --verbose 1 -g 50 -t 32 -b 10 --time 24:00:00 --job-name dup_unique.NH.mm.sh --module samtools,novocraft,umitools


samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.s.bam

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.s.bam


umi_tools dedup \
-I /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.s.bam  \
--method unique \
--multimapping-detection-method=NH \
--umi-separator rbc: \
-S /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.bam \
--log2stderr \
-L /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.s.log

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/recomb_NHtag/bam_recomb_NHtag/Ro_Clip_iCountcutadpt_all.unique.NH.mm.ddup.s.bam
