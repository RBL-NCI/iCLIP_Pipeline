import os
import sys
import glob
 
from subprocess import call

#Before running this script make sure to set the following values:

#Location of directory of files to be worked on. This must be an Absolute path.
input_dir = "/data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq"
out_dir = "/data/RBL_NCI/Wolin/Phil/mESC_clip/Novo_UMI_split/bam_icountprocess/mm10_Gencode_rRNA/iCount_all/sep_MM_Uniq"

#Pattern for matching files to work on.  For example: "*.fastq"
match_pattern = "*all.unique.NH.mm.s.bam"

#Name of task being processed.  For example: "fastqc"
task_name = "Comb_unique.mm_all"
   
os.chdir(input_dir)

#Find files in specified directory and iterate through the list, creating associated shell scripts
script_name = "Comb_unique.mm_all.sh"
script_f = open(script_name, "w+")
script = ""
script += "#swarm -f "+script_name+" --verbose 1 -g 50 -t 32 -b 1 --time 24:00:00 --job-name "+script_name+" --module samtools,novocraft"
script += "\n"
script += "\n"
script += "samtools merge "+out_dir+"/Ro_Clip_iCountcutadpt_all.unique.NH.mm.bam "

for file in glob.glob(match_pattern):
    fname_toks = file.split(".")

    script += ""+input_dir+"/"+file+" \\\n"
    
    
script_f.write(script)
script_f.close
 
    #Now that the shell script has been created - submit it...
    #call(["msub", script_name])
