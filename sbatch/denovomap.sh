#!/bin/bash

###Name the job
#SBATCH -J denovomap

###Set a walltime for job (HH:MM:SS)
#SBATCH --time=02:00:00

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
#SBATCH -o logfiles/denovomap.out

###Specify type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-type=ALL

###Email to which notifications will be sent
#SBATCH --mail-user=reese.beeler@colorado.edu

###Create file containing standard error of job
#SBATCH --error=errorfiles/denovomap.err

###This script needs to be submitted via sbatch to run on cluster.

###run modules

###Type commands.
denovo_map.pl -T 8 -m 3 -M 3 -n 1 -t -b 1 -D "erin radseq data" -o /projects/rebe4957/gbs/data/samples/ \
-s /projects/rebe4957/gbs/data/







