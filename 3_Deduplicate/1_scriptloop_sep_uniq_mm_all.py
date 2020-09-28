import os
import sys
import glob
import os.path
save=os.getcwd()
 
from subprocess import call

#Before running this script make sure to set the following values:

#Location of directory of files to be worked on. This must be an Absolute path.
input_dir = "/scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro"
out_dir_MM = "/scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/sep_MM_Uniq/Ro/multimap"
out_dir_U = "/scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/sep_MM_Uniq/Ro/unique"

#Pattern for matching files to work on.  For example: "*.fastq"
match_pattern = "*.all.sam"

#Name of task being processed.  For example: "fastqc"
task_name = "Separate_iCount_all"
   
   
#Find files in specified directory and iterate through the list, creating associated shell scripts
script_name = "1_Separate_iCount_all.sh"
completeName = os.path.join(save, script_name)

os.chdir(input_dir)

script_f = open(completeName, "w+")

script = ""
script += "#swarm -f "+script_name+" --verbose 1 -g 50 -t 32 -b 9 --time 2:00:00 --job-name "+script_name+" --module samtools,novocraft"
script += "\n"
script += "\n"
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
    script += "awk -F '\\t' -v OFS='\\t' '{ $(NF+1) = "+"\"NH:i:1\""+"; print }' "+outfile_U+" | cat "+input_dir+"/Ro_Clip_iCountcutadpt.all.header.txt - | samtools sort | samtools view -Sb > "+out_dir_U+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.bam \n"
    script += "\n"
    script += "samtools index "+out_dir_U+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.bam \n"
    script += "\n"
    
    script += "cat "+input_dir+"/Ro_Clip_iCountcutadpt.all.header.txt "+outfile_MM+" | samtools sort | samtools view -Sb > "+out_dir_MM+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".mm.bam \n"
    script += "\n"
    script += "samtools index "+out_dir_MM+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".mm.bam \n"
    script += "\n"

    script += "samtools merge -f "+input_dir+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.mm.bam "+out_dir_MM+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".mm.bam "+out_dir_U+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.bam \n"
    script += "\n"

    script += "samtools sort "+input_dir+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.mm.bam > "+input_dir+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.mm.s.bam \n"
    script += "\n"
    script += "samtools index "+input_dir+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+"."+fname_toks[3]+".unique.NH.mm.s.bam \n"
    script += "\n"

    script +="###########################################################"

    script += "\n"
    script += "\n"

script += "samtools view -H "+input_dir+"/Ro_Clip_iCountcutadpt.split.ab.all.sam > "+input_dir+"/Ro_Clip_iCountcutadpt.all.header.txt"

script += "\n"
 
 
script_f.write(script)
script_f.close

    #Now that the shell script has been created - submit it...
    #call(["msub", script_name])

#awk -F '\t' -v OFS='\t' '{ $(NF+1) = "NH\:i\:1"; print }' test.unique.txt | cat test.head.txt - | samtools sort | samtools view -Sb > test.unique.NH.bam

