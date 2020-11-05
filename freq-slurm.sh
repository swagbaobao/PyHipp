#!/bin/bash

# Submit this script with: sbatch <this-filename>

<<<<<<< HEAD
#SBATCH --time=1:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH -J "freqsp"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o freqsp-slurm.%N.%j.out # STDOUT
#SBATCH -e freqsp-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; pyh.FreqSpectrum(saveLevel=1); pyh.FreqSpectrum(loadHighPass=True, pointsPerWindow=3000, saveLevel=1);"
=======
#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH -J "freq"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o freq-slurm.%N.%j.out # STDOUT
#SBATCH -e freq-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; import time; pyh.FreqSpectrum(saveLevel=1); pyh.FreqSpectrum(loadHighPass=True, pointsPerWindow=3000, saveLevel=1); print(time.localtime());"
>>>>>>> a682ada5a5c2df8d996eb6b351a715b451fc834d
