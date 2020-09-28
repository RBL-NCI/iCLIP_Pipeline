#swarm -f 1_novo_SAM_i_all_GencoderRNAdb2.sh --verbose 1 -g 50 -t 32 -b 1 --time 24:00:00 --job-name 1_novo_SAM_i_all_GencoderRNAdb2.sh --module samtools,novocraft

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.aa.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.aa.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ab.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ab.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ac.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ac.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ad.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ad.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ae.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ae.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.af.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.af.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ag.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ag.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ah.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ah.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ai.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ai.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.aj.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.aj.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ak.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ak.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.al.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.al.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.am.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.am.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.an.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.an.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ao.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ao.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ap.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ap.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.aq.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.aq.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ar.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ar.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.as.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.as.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.at.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.at.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.au.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.au.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.av.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.av.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.aw.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.aw.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ax.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ax.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ay.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ay.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.az.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.az.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ba.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ba.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bb.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bb.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bc.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bc.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bd.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bd.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.be.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.be.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bf.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bf.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bg.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bg.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bh.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bh.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bi.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bi.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bj.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bj.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bk.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bk.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bl.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bl.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bm.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bm.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bn.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bn.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bo.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bo.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bp.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bp.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bq.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bq.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.br.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.br.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bs.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bs.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bt.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bt.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bu.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bu.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bv.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bv.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bw.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bw.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bx.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bx.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.by.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.by.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.bz.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.bz.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ca.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ca.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cb.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cb.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cc.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cc.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cd.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cd.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ce.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ce.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cf.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cf.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cg.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cg.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ch.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ch.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ci.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ci.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cj.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cj.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ck.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ck.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cl.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cl.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cm.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cm.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cn.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cn.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.co.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.co.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cp.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cp.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cq.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cq.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cr.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cr.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cs.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cs.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ct.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ct.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cu.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cu.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cv.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cv.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cw.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cw.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cx.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cx.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cy.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cy.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.cz.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.cz.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.da.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.da.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.db.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.db.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dc.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dc.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dd.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dd.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.de.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.de.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.df.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.df.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dg.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dg.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dh.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dh.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.di.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.di.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dj.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dj.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dk.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dk.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dl.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dl.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dm.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dm.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dn.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dn.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.do.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.do.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dp.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dp.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dq.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dq.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dr.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dr.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ds.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ds.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dt.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dt.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.du.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.du.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dv.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dv.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dw.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dw.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dx.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dx.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dy.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dy.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.dz.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.dz.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ea.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ea.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.eb.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.eb.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ec.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ec.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ed.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ed.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ee.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ee.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ef.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ef.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.eg.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.eg.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.eh.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.eh.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ei.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ei.all.sam 

novoalign -c 32 \
-t 15,3 \
-l 20 \
-x 4 \
-g 20 \
-s 1 \
-o SAM \
-R 0 -r All \
-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \
-f /scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro/Ro_Clip_iCountcutadpt.split.ej.fastq > /scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro/Ro_Clip_iCountcutadpt.split.ej.all.sam 
