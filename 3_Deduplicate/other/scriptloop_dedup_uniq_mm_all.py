import os
import sys
import glob
 
from subprocess import call

#Before running this script make sure to set the following values:

#Location of directory of files to be worked on. This must be an Absolute path.
input_dir = "/data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap/bam_mm"
out_dir = "/data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq/multimap"

#Pattern for matching files to work on.  For example: "*.fastq"
match_pattern = "*.all.sam"

#Name of task being processed.  For example: "fastqc"
task_name = "Separate_iCount_all"
   
os.chdir(input_dir)

#Find files in specified directory and iterate through the list, creating associated shell scripts
script_name = "Separate_iCount_all.sh"
script_f = open(script_name, "w+")
script = ""
script += "#swarm -f "+script_name+" --verbose 1 -g 50 -t 32 -b 9 --time 2:00:00 --job-name "+script_name+" --module samtools,novocraft"
script += "\n"
script += "\n"
script += "#samtools view -H "+input_dir+"/Ro_Clip_iCountcutadpt.split.ab.all.sam > "+input_dir+"/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt"
script += "\n"
script += "\n"
 
for file in glob.glob(match_pattern):
    fname_toks = file.split(".")
    outfile_U=""+out_dir_U+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.txt"
    outfile_MM=""+out_dir_MM+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".MM.txt"

    script += "samtools view "+input_dir+"/"+file+" | grep -v 'NH:i' > "+outfile_U+" \n"
    script += "\n"
    script += "samtools view "+input_dir+"/"+file+" | grep 'NH:i' > "+outfile_MM+" \n"
    script += "\n"
    script += "awk -F '\\t' -v OFS='\\t' '{ $(NF+1) = "+"\"NH:i:1\""+"; print }' "+outfile_U+" | cat "+input_dir+"/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > "+out_dir_U+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.bam \n"
    script += "\n"
    script += "samtools index "+out_dir_U+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.bam \n"
    script += "\n"
    
    script += "cat "+input_dir+"/iCount_all/sep_MM_Uniq/Ro_Clip_iCountcutadpt.all.header.txt "+outfile_MM+" | samtools sort | samtools view -Sb > "+out_dir_MM+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".mm.bam \n"
    script += "\n"
    script += "samtools index "+out_dir_MM+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".mm.bam \n"
    script += "\n"

    script += "samtools merge -f "+input_dir+"/iCount_all/sep_MM_Uniq/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.mm.bam "+out_dir_MM+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".mm.bam "+out_dir_U+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.bam \n"
    script += "\n"

    script += "samtools sort "+input_dir+"/iCount_all/sep_MM_Uniq/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.mm.bam > "+input_dir+"/iCount_all/sep_MM_Uniq/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.mm.s.bam \n"
    script += "\n"
    script += "samtools index "+input_dir+"/iCount_all/sep_MM_Uniq/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.mm.s.bam \n"
    script += "\n"

    script +="###########################################################"

    script += "\n"
    script += "\n"

script += "\n"
 
 
script_f.write(script)
script_f.close

    #Now that the shell script has been created - submit it...
    #call(["msub", script_name])

#awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH\:i\:1"; print }' test.unique.txt | cat test.head.txt - | samtools sort | samtools view -Sb > test.unique.NH.bam

