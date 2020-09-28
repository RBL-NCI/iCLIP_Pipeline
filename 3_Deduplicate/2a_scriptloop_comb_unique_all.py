import os
import sys
import glob
import os.path
save=os.getcwd()
from subprocess import call

#Before running this script make sure to set the following values:

#Location of directory of files to be worked on. This must be an Absolute path.
input_dir = "/scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/sep_MM_Uniq/Ro/unique"
out_dir = "/scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/sep_MM_Uniq/Ro"
 
#Pattern for matching files to work on.  For example: "*.fastq"
match_pattern = "*all.unique.NH.bam"

#Name of task being processed.  For example: "fastqc"
task_name = "Comb_unique.NH.all"
   

#Find files in specified directory and iterate through the list, creating associated shell scripts
script_name = "2a_Comb_unique.NH_all.sh"
completeName = os.path.join(save, script_name)

os.chdir(input_dir)

script_f = open(completeName, "w+")

script = ""
script += "#swarm -f "+script_name+" --verbose 1 -g 50 -t 32 -b 1 --time 24:00:00 --job-name "+script_name+" --module samtools,novocraft"
script += "\n"
script += "\n"
script += "samtools merge "+out_dir+"/Ro_Clip_iCountcutadpt_all.unique.NH.bam "

for file in glob.glob(match_pattern):
    fname_toks = file.split(".")

    script += ""+input_dir+"/"+file+" \\\n"
    
script += "\n"
script_f.write(script)
script_f.close
 
    #Now that the shell script has been created - submit it...
    #call(["msub", script_name])

