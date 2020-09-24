#swarm -f Separate_iCount_all.sh --verbose 1 -g 50 -t 32 -b 9 --time 2:00:00 --job-name Separate_iCount_all.sh --module samtools,novocraft

#samtools view -H /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ab.all.sam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bt.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bt.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bt.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bt.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bt.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bt.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bt.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bt.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bt.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bt.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bt.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bt.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bt.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bt.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bt.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bt.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cw.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cw.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cw.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cw.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cw.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cw.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cw.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cw.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cw.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cw.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cw.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cw.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cw.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cw.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cw.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cw.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.df.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.df.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.df.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.df.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.df.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.df.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.df.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.df.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.df.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.df.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.df.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.df.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.df.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.df.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.df.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.df.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cr.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cr.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cr.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cr.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cr.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cr.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cr.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cr.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cr.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cr.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cr.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cr.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cr.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cr.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cr.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cr.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.eg.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eg.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.eg.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eg.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eg.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eg.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eg.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eg.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eg.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eg.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eg.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eg.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eg.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eg.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eg.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eg.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bc.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bc.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bc.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bc.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bc.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bc.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bc.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bc.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bc.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bc.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bc.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bc.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bc.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bc.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bc.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bc.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bm.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bm.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bm.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bm.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bm.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bm.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bm.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bm.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bm.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bm.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bm.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bm.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bm.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bm.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bm.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bm.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ba.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ba.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ba.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ba.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ba.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ba.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ba.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ba.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ba.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ba.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ba.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ba.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ba.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ba.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ba.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ba.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ef.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ef.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ef.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ef.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ef.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ef.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ef.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ef.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ef.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ef.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ef.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ef.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ef.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ef.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ef.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ef.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bl.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bl.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bl.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bl.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bl.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bl.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bl.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bl.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bl.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bl.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bl.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bl.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bl.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bl.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bl.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bl.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dt.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dt.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dt.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dt.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dt.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dt.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dt.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dt.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dt.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dt.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dt.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dt.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dt.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dt.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dt.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dt.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ab.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ab.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ab.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ab.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ab.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ab.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ab.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ab.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ab.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ab.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ab.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ab.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ab.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ab.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ab.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ab.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ce.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ce.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ce.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ce.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ce.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ce.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ce.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ce.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ce.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ce.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ce.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ce.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ce.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ce.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ce.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ce.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aq.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aq.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aq.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aq.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aq.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aq.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aq.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aq.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aq.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aq.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aq.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aq.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aq.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aq.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aq.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aq.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dw.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dw.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dw.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dw.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dw.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dw.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dw.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dw.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dw.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dw.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dw.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dw.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dw.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dw.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dw.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dw.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bf.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bf.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bf.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bf.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bf.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bf.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bf.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bf.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bf.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bf.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bf.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bf.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bf.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bf.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bf.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bf.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bq.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bq.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bq.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bq.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bq.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bq.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bq.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bq.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bq.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bq.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bq.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bq.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bq.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bq.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bq.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bq.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.by.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.by.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.by.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.by.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.by.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.by.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.by.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.by.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.by.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.by.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.by.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.by.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.by.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.by.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.by.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.by.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cd.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cd.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cd.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cd.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cd.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cd.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cd.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cd.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cd.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cd.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cd.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cd.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cd.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cd.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cd.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cd.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ed.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ed.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ed.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ed.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ed.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ed.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ed.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ed.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ed.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ed.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ed.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ed.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ed.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ed.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ed.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ed.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.be.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.be.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.be.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.be.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.be.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.be.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.be.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.be.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.be.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.be.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.be.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.be.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.be.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.be.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.be.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.be.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aw.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aw.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aw.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aw.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aw.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aw.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aw.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aw.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aw.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aw.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aw.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aw.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aw.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aw.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aw.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aw.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dk.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dk.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dk.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dk.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dk.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dk.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dk.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dk.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dk.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dk.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dk.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dk.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dk.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dk.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dk.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dk.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ad.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ad.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ad.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ad.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ad.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ad.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ad.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ad.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ad.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ad.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ad.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ad.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ad.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ad.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ad.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ad.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dx.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dx.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dx.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dx.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dx.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dx.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dx.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dx.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dx.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dx.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dx.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dx.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dx.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dx.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dx.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dx.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cq.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cq.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cq.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cq.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cq.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cq.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cq.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cq.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cq.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cq.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cq.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cq.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cq.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cq.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cq.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cq.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ci.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ci.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ci.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ci.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ci.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ci.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ci.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ci.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ci.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ci.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ci.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ci.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ci.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ci.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ci.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ci.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cx.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cx.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cx.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cx.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cx.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cx.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cx.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cx.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cx.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cx.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cx.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cx.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cx.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cx.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cx.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cx.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ej.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ej.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ej.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ej.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ej.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ej.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ej.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ej.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ej.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ej.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ej.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ej.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ej.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ej.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ej.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ej.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ck.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ck.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ck.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ck.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ck.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ck.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ck.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ck.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ck.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ck.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ck.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ck.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ck.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ck.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ck.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ck.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cs.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cs.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cs.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cs.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cs.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cs.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cs.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cs.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cs.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cs.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cs.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cs.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cs.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cs.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cs.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cs.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bj.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bj.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bj.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bj.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bj.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bj.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bj.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bj.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bj.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bj.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bj.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bj.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bj.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bj.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bj.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bj.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bd.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bd.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bd.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bd.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bd.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bd.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bd.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bd.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bd.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bd.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bd.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bd.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bd.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bd.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bd.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bd.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cm.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cm.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cm.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cm.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cm.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cm.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cm.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cm.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cm.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cm.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cm.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cm.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cm.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cm.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cm.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cm.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.br.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.br.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.br.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.br.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.br.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.br.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.br.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.br.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.br.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.br.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.br.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.br.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.br.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.br.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.br.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.br.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bs.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bs.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bs.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bs.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bs.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bs.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bs.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bs.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bs.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bs.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bs.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bs.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bs.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bs.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bs.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bs.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dg.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dg.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dg.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dg.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dg.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dg.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dg.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dg.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dg.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dg.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dg.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dg.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dg.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dg.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dg.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dg.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dn.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dn.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dn.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dn.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dn.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dn.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dn.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dn.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dn.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dn.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dn.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dn.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dn.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dn.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dn.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dn.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.de.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.de.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.de.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.de.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.de.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.de.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.de.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.de.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.de.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.de.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.de.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.de.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.de.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.de.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.de.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.de.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ac.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ac.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ac.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ac.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ac.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ac.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ac.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ac.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ac.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ac.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ac.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ac.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ac.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ac.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ac.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ac.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dd.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dd.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dd.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dd.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dd.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dd.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dd.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dd.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dd.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dd.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dd.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dd.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dd.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dd.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dd.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dd.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aa.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aa.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aa.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aa.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aa.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aa.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aa.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aa.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aa.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aa.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aa.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aa.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aa.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aa.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aa.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aa.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.al.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.al.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.al.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.al.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.al.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.al.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.al.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.al.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.al.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.al.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.al.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.al.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.al.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.al.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.al.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.al.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ei.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ei.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ei.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ei.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ei.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ei.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ei.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ei.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ei.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ei.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ei.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ei.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ei.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ei.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ei.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ei.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dy.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dy.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dy.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dy.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dy.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dy.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dy.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dy.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dy.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dy.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dy.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dy.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dy.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dy.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dy.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dy.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dp.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dp.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dp.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dp.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dp.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dp.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dp.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dp.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dp.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dp.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dp.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dp.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dp.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dp.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dp.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dp.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cb.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cb.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cb.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cb.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cb.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cb.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cb.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cb.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cb.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cb.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cb.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cb.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cb.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cb.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cb.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cb.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cc.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cc.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cc.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cc.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cc.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cc.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cc.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cc.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cc.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cc.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cc.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cc.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cc.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cc.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cc.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cc.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ah.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ah.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ah.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ah.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ah.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ah.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ah.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ah.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ah.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ah.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ah.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ah.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ah.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ah.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ah.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ah.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.co.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.co.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.co.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.co.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.co.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.co.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.co.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.co.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.co.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.co.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.co.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.co.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.co.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.co.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.co.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.co.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cp.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cp.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cp.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cp.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cp.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cp.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cp.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cp.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cp.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cp.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cp.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cp.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cp.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cp.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cp.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cp.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ch.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ch.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ch.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ch.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ch.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ch.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ch.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ch.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ch.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ch.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ch.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ch.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ch.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ch.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ch.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ch.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ao.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ao.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ao.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ao.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ao.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ao.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ao.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ao.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ao.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ao.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ao.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ao.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ao.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ao.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ao.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ao.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ca.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ca.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ca.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ca.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ca.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ca.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ca.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ca.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ca.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ca.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ca.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ca.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ca.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ca.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ca.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ca.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.au.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.au.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.au.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.au.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.au.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.au.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.au.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.au.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.au.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.au.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.au.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.au.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.au.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.au.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.au.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.au.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.do.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.do.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.do.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.do.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.do.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.do.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.do.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.do.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.do.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.do.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.do.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.do.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.do.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.do.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.do.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.do.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ec.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ec.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ec.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ec.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ec.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ec.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ec.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ec.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ec.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ec.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ec.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ec.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ec.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ec.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ec.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ec.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dj.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dj.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dj.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dj.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dj.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dj.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dj.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dj.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dj.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dj.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dj.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dj.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dj.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dj.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dj.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dj.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dc.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dc.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dc.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dc.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dc.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dc.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dc.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dc.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dc.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dc.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dc.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dc.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dc.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dc.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dc.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dc.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.as.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.as.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.as.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.as.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.as.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.as.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.as.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.as.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.as.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.as.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.as.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.as.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.as.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.as.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.as.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.as.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.da.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.da.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.da.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.da.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.da.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.da.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.da.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.da.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.da.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.da.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.da.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.da.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.da.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.da.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.da.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.da.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cn.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cn.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cn.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cn.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cn.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cn.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cn.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cn.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cn.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cn.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cn.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cn.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cn.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cn.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cn.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cn.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ai.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ai.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ai.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ai.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ai.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ai.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ai.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ai.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ai.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ai.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ai.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ai.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ai.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ai.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ai.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ai.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ds.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ds.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ds.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ds.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ds.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ds.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ds.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ds.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ds.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ds.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ds.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ds.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ds.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ds.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ds.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ds.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ea.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ea.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ea.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ea.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ea.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ea.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ea.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ea.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ea.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ea.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ea.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ea.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ea.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ea.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ea.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ea.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bg.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bg.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bg.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bg.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bg.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bg.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bg.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bg.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bg.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bg.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bg.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bg.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bg.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bg.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bg.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bg.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cu.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cu.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cu.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cu.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cu.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cu.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cu.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cu.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cu.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cu.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cu.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cu.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cu.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cu.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cu.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cu.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cz.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cz.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cz.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cz.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cz.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cz.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cz.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cz.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cz.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cz.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cz.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cz.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cz.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cz.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cz.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cz.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.di.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.di.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.di.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.di.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.di.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.di.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.di.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.di.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.di.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.di.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.di.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.di.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.di.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.di.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.di.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.di.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.af.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.af.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.af.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.af.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.af.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.af.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.af.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.af.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.af.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.af.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.af.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.af.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.af.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.af.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.af.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.af.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dz.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dz.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dz.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dz.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dz.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dz.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dz.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dz.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dz.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dz.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dz.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dz.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dz.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dz.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dz.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dz.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ee.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ee.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ee.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ee.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ee.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ee.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ee.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ee.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ee.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ee.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ee.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ee.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ee.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ee.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ee.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ee.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ay.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ay.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ay.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ay.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ay.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ay.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ay.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ay.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ay.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ay.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ay.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ay.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ay.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ay.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ay.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ay.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bu.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bu.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bu.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bu.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bu.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bu.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bu.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bu.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bu.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bu.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bu.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bu.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bu.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bu.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bu.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bu.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ae.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ae.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ae.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ae.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ae.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ae.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ae.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ae.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ae.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ae.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ae.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ae.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ae.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ae.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ae.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ae.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dm.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dm.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dm.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dm.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dm.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dm.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dm.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dm.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dm.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dm.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dm.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dm.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dm.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dm.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dm.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dm.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.av.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.av.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.av.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.av.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.av.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.av.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.av.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.av.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.av.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.av.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.av.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.av.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.av.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.av.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.av.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.av.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cf.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cf.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cf.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cf.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cf.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cf.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cf.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cf.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cf.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cf.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cf.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cf.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cf.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cf.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cf.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cf.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cy.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cy.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cy.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cy.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cy.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cy.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cy.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cy.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cy.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cy.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cy.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cy.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cy.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cy.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cy.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cy.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bn.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bn.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bn.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bn.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bn.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bn.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bn.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bn.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bn.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bn.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bn.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bn.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bn.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bn.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bn.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bn.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bz.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bz.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bz.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bz.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bz.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bz.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bz.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bz.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bz.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bz.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bz.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bz.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bz.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bz.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bz.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bz.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.at.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.at.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.at.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.at.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.at.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.at.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.at.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.at.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.at.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.at.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.at.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.at.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.at.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.at.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.at.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.at.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ap.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ap.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ap.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ap.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ap.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ap.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ap.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ap.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ap.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ap.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ap.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ap.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ap.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ap.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ap.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ap.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ak.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ak.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ak.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ak.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ak.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ak.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ak.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ak.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ak.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ak.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ak.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ak.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ak.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ak.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ak.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ak.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ax.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ax.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ax.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ax.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ax.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ax.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ax.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ax.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ax.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ax.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ax.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ax.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ax.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ax.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ax.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ax.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aj.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aj.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aj.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aj.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aj.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aj.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aj.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aj.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aj.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aj.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aj.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.aj.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.aj.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aj.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aj.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.aj.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.az.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.az.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.az.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.az.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.az.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.az.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.az.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.az.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.az.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.az.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.az.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.az.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.az.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.az.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.az.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.az.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cl.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cl.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cl.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cl.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cl.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cl.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cl.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cl.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cl.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cl.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cl.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cl.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cl.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cl.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cl.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cl.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.eb.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eb.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.eb.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eb.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eb.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eb.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eb.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eb.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eb.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eb.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eb.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eb.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eb.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eb.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eb.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eb.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dv.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dv.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dv.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dv.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dv.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dv.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dv.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dv.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dv.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dv.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dv.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dv.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dv.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dv.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dv.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dv.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.am.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.am.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.am.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.am.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.am.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.am.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.am.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.am.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.am.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.am.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.am.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.am.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.am.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.am.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.am.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.am.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dl.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dl.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dl.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dl.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dl.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dl.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dl.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dl.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dl.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dl.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dl.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dl.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dl.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dl.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dl.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dl.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bh.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bh.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bh.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bh.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bh.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bh.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bh.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bh.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bh.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bh.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bh.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bh.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bh.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bh.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bh.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bh.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ar.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ar.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ar.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ar.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ar.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ar.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ar.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ar.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ar.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ar.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ar.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ar.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ar.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ar.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ar.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ar.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.eh.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eh.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.eh.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eh.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eh.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eh.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eh.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eh.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eh.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eh.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eh.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.eh.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.eh.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eh.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eh.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.eh.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bp.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bp.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bp.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bp.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bp.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bp.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bp.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bp.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bp.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bp.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bp.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bp.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bp.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bp.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bp.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bp.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cv.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cv.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cv.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cv.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cv.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cv.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cv.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cv.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cv.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cv.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cv.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cv.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cv.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cv.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cv.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cv.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ct.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ct.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ct.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ct.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ct.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ct.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ct.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ct.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ct.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ct.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ct.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ct.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ct.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ct.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ct.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ct.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cj.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cj.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cj.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cj.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cj.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cj.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cj.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cj.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cj.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cj.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cj.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cj.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cj.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cj.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cj.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cj.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.du.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.du.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.du.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.du.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.du.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.du.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.du.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.du.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.du.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.du.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.du.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.du.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.du.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.du.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.du.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.du.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ag.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ag.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ag.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ag.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ag.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ag.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ag.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ag.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ag.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ag.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ag.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.ag.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.ag.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ag.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ag.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.ag.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bw.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bw.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bw.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bw.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bw.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bw.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bw.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bw.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bw.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bw.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bw.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bw.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bw.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bw.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bw.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bw.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bo.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bo.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bo.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bo.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bo.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bo.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bo.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bo.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bo.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bo.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bo.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bo.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bo.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bo.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bo.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bo.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dh.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dh.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dh.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dh.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dh.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dh.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dh.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dh.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dh.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dh.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dh.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dh.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dh.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dh.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dh.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dh.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bi.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bi.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bi.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bi.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bi.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bi.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bi.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bi.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bi.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bi.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bi.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bi.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bi.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bi.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bi.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bi.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bv.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bv.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bv.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bv.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bv.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bv.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bv.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bv.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bv.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bv.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bv.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bv.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bv.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bv.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bv.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bv.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dr.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dr.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dr.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dr.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dr.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dr.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dr.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dr.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dr.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dr.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dr.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dr.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dr.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dr.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dr.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dr.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bk.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bk.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bk.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bk.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bk.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bk.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bk.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bk.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bk.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bk.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bk.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bk.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bk.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bk.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bk.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bk.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.an.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.an.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.an.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.an.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.an.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.an.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.an.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.an.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.an.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.an.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.an.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.an.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.an.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.an.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.an.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.an.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dq.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dq.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dq.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dq.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dq.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dq.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dq.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dq.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dq.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dq.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dq.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.dq.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.dq.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dq.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dq.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.dq.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bx.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bx.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bx.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bx.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bx.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bx.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bx.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bx.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bx.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bx.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bx.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bx.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bx.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bx.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bx.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bx.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.db.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.db.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.db.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.db.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.db.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.db.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.db.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.db.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.db.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.db.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.db.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.db.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.db.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.db.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.db.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.db.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cg.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cg.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cg.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cg.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cg.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cg.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cg.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cg.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cg.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cg.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cg.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.cg.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.cg.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cg.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cg.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.cg.all.unique.NH.mm.s.bam 

###########################################################

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bb.all.sam | grep -v 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bb.all.unique.txt 

samtools view /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bb.all.sam | grep 'NH:i' > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bb.all.MM.txt 

awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH:i:1"; print }' /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bb.all.unique.txt | cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bb.all.unique.NH.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bb.all.unique.NH.bam 

cat /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bb.all.MM.txt | samtools sort | samtools view -Sb > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bb.all.mm.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bb.all.mm.bam 

samtools merge -f /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bb.all.unique.NH.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/Ro_Clip_iCountcutadpt.split.bb.all.mm.bam /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/unique/Ro_Clip_iCountcutadpt.split.bb.all.unique.NH.bam 

samtools sort /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bb.all.unique.NH.mm.bam > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bb.all.unique.NH.mm.s.bam 

samtools index /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.split.bb.all.unique.NH.mm.s.bam 

###########################################################


