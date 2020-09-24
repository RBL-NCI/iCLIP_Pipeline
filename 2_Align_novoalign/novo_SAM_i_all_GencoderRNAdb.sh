#swarm -f novo_SAM_i_all_GencoderRNAdb.sh --verbose 1 -g 50 -t 32 -b 1 --time 24:00:00 --job-name novo_SAM_i_all_GencoderRNAdb.sh --module samtools,novocraft

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dq.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dq.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.de.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.de.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ax.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ax.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ej.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ej.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.am.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.am.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ed.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ed.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dl.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dl.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.af.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.af.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ee.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ee.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bq.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bq.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dk.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dk.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dd.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dd.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dw.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dw.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cn.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cn.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.by.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.by.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bh.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bh.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ch.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ch.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ei.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ei.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ae.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ae.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cw.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cw.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bp.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bp.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ao.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ao.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.be.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.be.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.br.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.br.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ea.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ea.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bk.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bk.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bj.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bj.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.co.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.co.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dv.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dv.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ab.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ab.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.di.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.di.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dm.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dm.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dn.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dn.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cb.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cb.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.eg.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.eg.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.du.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.du.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ca.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ca.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ck.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ck.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ag.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ag.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.aq.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aq.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bm.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bm.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.do.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.do.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dx.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dx.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bd.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bd.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ds.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ds.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.db.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.db.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.aa.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aa.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bi.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bi.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dr.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dr.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cq.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cq.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dy.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dy.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.eh.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.eh.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bn.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bn.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cp.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cp.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dt.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dt.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dz.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dz.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ak.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ak.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.da.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.da.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ah.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ah.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cd.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cd.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ac.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ac.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dg.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dg.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cg.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cg.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cl.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cl.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.an.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.an.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bx.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bx.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bo.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bo.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.at.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.at.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bv.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bv.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cy.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cy.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.df.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.df.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cu.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cu.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bs.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bs.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.aw.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aw.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cz.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cz.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cf.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cf.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.aj.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.aj.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.av.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.av.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ba.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ba.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cc.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cc.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cv.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cv.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dh.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dh.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.as.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.as.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ef.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ef.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cr.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cr.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ci.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ci.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ce.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ce.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dc.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dc.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bu.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bu.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bl.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bl.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bc.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bc.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bz.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bz.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bb.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bb.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ar.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ar.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cs.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cs.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ec.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ec.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dp.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dp.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bt.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bt.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ay.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ay.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cx.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cx.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.au.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.au.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ap.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ap.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ad.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ad.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.eb.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.eb.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bf.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bf.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cm.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cm.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.cj.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.cj.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.al.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.al.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.az.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.az.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bg.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bg.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.bw.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.bw.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.dj.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.dj.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ct.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ct.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /data/RBL_NCI/Phil/Reference/Index/novoalign/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /data/RBL_NCI/Wolin/Phil/mESC_clip/FASTQ/Sample_SIM_iCLIP/samples_split/splitfatq_icountprocess/Ro_Clip_iCountcutadpt.split.ai.fastq > /data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/Ro_Clip_iCountcutadpt.split.ai.all.sam 
