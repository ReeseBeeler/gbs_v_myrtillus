#!/bin/bash

###Name the job
#SBATCH -J stacks_pipeline

###Set a walltime for job (HH:MM:SS)
#SBATCH --time=05:00:00

###Quality of service= janus (24h), janus-long (7d), janus-debug (1h), 
###himem (14d), crestone (14d), gpu (24h). 
#SBATCH --qos janus

###specify number of nodes needed
#SBATCH -N 1

###Specify amount of memory required on each node (b, kb, mb, gb).
#SBATCH --mem 10000

###Specify number of simultaneous tasks the job requires.
#SBATCH --ntasks 1
#SBATCH --ntasks-per-node 8

###Set the output file name
#SBATCH -o logfiles/stacks_pipeline.out

###Specify type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-type=ALL

###Email to which notifications will be sent
#SBATCH --mail-user=reese.beeler@colorado.edu

###Create file containing standard error of job
#SBATCH --error=errorfiles/stacks_pipeline.err

###This script needs to be submitted via sbatch to run on cluster.

###run modules
module load gcc

###Type commands.
process_radtags -f <path to single input file if proc SE seqs> -p <path to directory of files; PE files(-P)> -b <barcode file> -o <location of output destination/filename> -e <restriction enzyme used> -r -c -q -D <other params, see manual>

ustacks -t <file type> -f <input file location> -o <output location> -m 10 -M 2 -R -H <+ other params, see manual> 






