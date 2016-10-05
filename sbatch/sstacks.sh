#!/bin/bash

###Name the job
#SBATCH -J sstacks

###Set a walltime for job (HH:MM:SS)
#SBATCH --time=05:00:00

###Quality of service= janus (24h), janus-long (7d), janus-debug (1h), 
###himem (14d), crestone (14d), gpu (24h). 
#SBATCH --qos janus

###specify number of nodes needed
#SBATCH -N 1

###Specify amount of memory required on each node (b, kb, mb, gb).
#SBATCH --mem 5gb

###Specify number of simultaneous tasks the job requires.
#SBATCH --ntasks 1
#SBATCH --ntasks-per-node 8

###Set the output file name
#SBATCH -o logfiles/sstacks.out

###Specify type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-type=ALL

###Email to which notifications will be sent
#SBATCH --mail-user=reese.beeler@colorado.edu

###Create file containing standard error of job
#SBATCH --error=errorfiles/sstacks.err

###This script needs to be submitted via sbatch to run on cluster.

###run modules

###Type commands.
sstacks -o /projects/rebe4957/gbs_v_myrtillus/data/samples/stacks -c /projects/rebe4957/gbs_v_myrtillus/data/samples/stacks/batch_0 -s /projects/rebe4957/gbs_v_myrtillus/data/samples/stacks/Tripp_NoIndex_L005_R1_001 






