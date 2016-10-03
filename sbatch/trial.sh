#!/bin/bash

###Name the job
#SBATCH -J trial

###Set a walltime for job (HH:MM:SS)
#SBATCH --time=00:01:00

#SBATCH --qos janus

###specify number of nodes and processors(CPUs) needed
#SBATCH --N 1
#SBATCH --ntasks-per-node 12
#SBATCH --cpus-per-task= 1

###Set the output file name to <jobid>.out
#SBATCH -o trial.out

###Specify type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-type=ALL

###Email to which notifications will be sent
#SBATCH --mail-user=rebe4957@colorado.edu

###Create file containing standard error of job
#SBATCH --error=trial.err

###This script needs to be submitted via sbatch to run on cluster.

###run modules
module load slurm
cd/projects/rebe4957/gbs/

###Type commands.
mkdir trial
touch /trial/fungi
touch /trial/plants
touch /trial/animals
touch /trial/bacteria
touch /trial/protists
touch /trial/WATERBEARS




