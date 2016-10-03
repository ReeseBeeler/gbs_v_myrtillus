#!/bin/bash

###Name the job
#SBATCH -J git_commit

###Set a walltime for job (HH:MM:SS)
#SBATCH --time=01:00:00

###Quality of service= janus (24h), janus-long (7d), janus-debug (1h), 
###himem (14d), crestone (14d), gpu (24h). 
#SBATCH --qos janus

###specify number of nodes needed
#SBATCH -N 1

###Specify amount of memory required on each node (b, kb, mb, gb).
#SBATCH --mem 5gb

###Specify number of simultaneous tasks the job requires.
#SBATCH --ntasks 1
#SBATCH --ntasks-per-node 12

###Set the output file name
#SBATCH -o logfiles/git_commit.out

###Specify type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-type=ALL

###Email to which notifications will be sent
#SBATCH --mail-user=reese.beeler@colorado.edu

###Create file containing standard error of job
#SBATCH --error=errorfiles/git_commit.err

###This script needs to be submitted via sbatch to run on cluster.

###run modules

###Type commands.
cd ../
git commit -m "directory of data, programs, and job scripts for V. myrtillus RAD-seq phylogeography project" 

echo FINI




