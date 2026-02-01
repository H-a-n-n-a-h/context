#!/bin/bash
#SBATCH --job-name=jupyter
#SBATCH --partition=cpu-5h
#SBATCH --mem=200G
#SBATCH --ntasks-per-node=16
#SBATCH --output=logs/jupyter-%j.out
#SBATCH --exclude=head036

source ~/miniforge3/etc/profile.d/conda.sh
conda activate context-project

jupyter notebook --ip 0.0.0.0 --no-browser