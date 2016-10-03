#!/bin/bash

###Name the job
#SBATCH -J fastqc

###Set a walltime for job (HH:MM:SS)
#SBATCH --time=01:00:00

###Quality of service= janus (24h), janus-long (7d), janus-debug (1h), 
###himem (14d), crestone (14d), gpu (24h). 
#SBATCH --qos janus

###specify number of nodes needed
#SBATCH -N 1

###Specify amount of memory required on each node (b, kb, mb, gb).
#SBATCH --mem 3gb

###Specify number of simultaneous tasks the job requires.
#SBATCH --ntasks-per-node 12

###Set the output file name
#SBATCH --output=fastqc.out

###File to collect standard errors
#SBATCH --error=fastqc.err

###Specify type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-type=ALL

###Email to which notifications will be sent
#SBATCH --mail-user=reese.beeler@colorado.edu

###This script needs to be submitted via sbatch to run on cluster.

###Type commands.
cd /projects/rebe4957/gbs/programs/FastQC

./fastqc -o /projects/rebe4957/gbs/data /projects/rebe4957/gbs/data/Tripp-NoIndex_L005_R1_001.fastq


