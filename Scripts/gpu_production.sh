#!/bin/bash
#SBATCH --mail-user=mithun.nag.karadi.giridhar@vanderbilt.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --mem=20G
#SBATCH --time=5-00:00:00
#SBATCH --error=PPARg_6ONI.err         
#SBATCH --output=PPARg_6ONI.out     
#SBATCH --account=csb_gpu_acc
#SBATCH --partition=pascal
#SBATCH --gres=gpu:1

source /sb/apps/amber22/amber.sh
cd /home/karadim/Amber_Trial_2
perl production.pl > PRODUCTION.OUT