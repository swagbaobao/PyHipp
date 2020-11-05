#!/bin/bash

# Submit this script with: sbatch <this-filename>

<<<<<<< HEAD
#SBATCH --time=1:00:00   # walltime
=======
#SBATCH --time=24:00:00   # walltime
>>>>>>> a682ada5a5c2df8d996eb6b351a715b451fc834d
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH -J "fsall"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o fsall-slurm.%N.%j.out # STDOUT
#SBATCH -e fsall-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
<<<<<<< HEAD
python -u -c "import PyHipp as pyh; import DataProcessingTools as DPT; lfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*','*mountains*'], objtype=pyh.FreqSpectrum, saveLevel=1); lfall.save(); hfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*','*mountains*'], objtype=pyh.FreqSpectrum, loadHighPass=True, pointsPerWindow=3000, saveLevel=1); hfall.save();"
=======
python -u -c "import PyHipp as pyh; import time; lfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*', '*mountains*'], objtype=pyh.FreqSpectrum, saveLevel=1); lfall.save(); hfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*', '*mountains*'], objtype=pyh.FreqSpectrum, loadHighPass=True, pointsPerWindow=3000, saveLevel=1); hfall.save(); print(time.localtime());"
>>>>>>> a682ada5a5c2df8d996eb6b351a715b451fc834d
