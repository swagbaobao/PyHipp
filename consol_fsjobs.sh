#!/bin/sh

temp1=($(squeue))

cmd1="sbatch --dependency=afterok:"

counter1=0
for i in "${temp1[@]}"; do
       if [[ "$i" == "compute" ]]; then
	       id1=${temp1[$counter1-1]}
	       cmd1="${cmd1}${id1}:"
       fi
       counter1=$((counter1+1))
done

cmd1=${cmd1::-1}
cmd1="${cmd1} /data/src/PyHipp/fsall-slurm.sh"

<<<<<<< HEAD
=======

>>>>>>> a682ada5a5c2df8d996eb6b351a715b451fc834d
echo $cmd1
eval $cmd1
