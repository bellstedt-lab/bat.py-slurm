#!/bin/bash

#SBATCH -J BAT5
#SBATCH -o slurm_5_fe_analyseMD_JobId%j.out


clear
source /opt/conda/etc/profile.d/conda.sh
conda activate py38
cd ../BAT

if [[ -d "./fe/pose0/" && ! -d "./fe/pose0/Results/" ]]; then
	echo "5) Analysing MD runs and calculate binding energy..."
	python BAT_slurm.py -i input-dd-openmm.in -s analysis
        sleep 2
        echo "...Finished."
else
	echo "-) Skipping Analysis: Analysis results exist already"
fi
