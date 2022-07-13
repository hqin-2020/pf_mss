#!/bin/bash

#SBATCH --account=pi-lhansen
#SBATCH --job-name=pf_mss
#SBATCH --output=pf_mss.%A_%a.out
#SBATCH --error=pf_mss.%A_%a.err
#SBATCH --time=0-8:00:00
#SBATCH --partition=standard
#SBATCH --cpus-per-task=28
#SBATCH --mem=32G
#SBATCH --array=1-150

scratch_dir="/scratch/${SLURM_JOB_USER}/pf_mss/"
mkdir -p $scratch_dir

module load python/booth/3.8/3.8.5

srun python3 Run_Aso1_0_CPU_$SLURM_ARRAY_TASK_ID.py  