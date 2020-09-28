import os
import sys
import glob
 
import os.path
save=os.getcwd()
 
from subprocess import call

#Before running this script make sure to set the following values:

#Location of directory of files to be worked on. This must be an Absolute path.
input_dir = "/scratch/homanpj/iCLIP_pipeline/FASTQ/samples_split2/splitfastq_icountprocess/Ro"
out_dir = "/scratch/homanpj/iCLIP_pipeline/bam/mm10_Gencode_rRNA/splitNovoAlign/Ro"

#Pattern for matching files to work on.  For example: "*.fastq"
match_pattern = "*.fastq"

#Name of task being processed.  For example: "fastqc"
task_name = "Novo_SAM_i_all_GencoderRNAdb2"
   

#Find files in specified directory and iterate through the list, creating associated shell scripts
script_name = "1_novo_SAM_i_all_GencoderRNAdb2.sh"
completeName = os.path.join(save, script_name)

os.chdir(input_dir)

script_f = open(completeName, "w+")

script = ""
#script += os.getcwd()
#script += "\n"
script += "#swarm -f "+script_name+" --verbose 1 -g 50 -t 32 -b 1 --time 24:00:00 --job-name "+script_name+" --module samtools,novocraft"
script += "\n"

for file in glob.glob(match_pattern):
    fname_toks = file.split(".")

    script += "\n"

#Build out customized task to be performed

    script += "novoalign -c 32 \\"+"\n"
    script += "-t 15,3 \\"+"\n"
    script += "-l 20 \\"+"\n"
    script += "-x 4 \\"+"\n"
    script += "-g 20 \\"+"\n"
    script += "-s 1 \\"+"\n"
    script += "-o SAM \\"+"\n"
    script += "-R 0 -r All \\"+"\n"
    script += "-d /scratch/homanpj/iCLIP_pipeline/mm10_gencode_prerRNA/mm10_gencode_prerRNA \\"+"\n"
    script += "-f "+input_dir+"/"+file+" > "+out_dir+"/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+".all.sam \n"
    #script += "|samtools sort | samtools view -bS > "+out_dir+"/mm10_philDB/"+fname_toks[0]+"."+fname_toks[1]+"."+fname_toks[2]+".all.bam"
    #script += "\n"
    #script += "\n"
    
    
script_f.write(script)
script_f.close

    #Now that the shell script has been created - submit it...
    #call(["msub", script_name])

