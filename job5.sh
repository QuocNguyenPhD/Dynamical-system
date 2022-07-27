#!/bin/bash
#SBATCH -A sen
#SBATCH --nodes=1 --mem=180GB
#SBATCH --mail-user=qanguyen4@uh.edu
#SBATCH --mail-type=all
#SBATCH --ntasks-per-node=40 --constraint=gen10
#SBATCH -J ONIOM # job name
#SBATCH -o ONIOM.o%j
#SBATCH -t 336:00:00 # time (D-HH:MM)

module add gaussian16/c.01
unset GAUSS_SCRDIR
export org_dir=`pwd`

export model=v2_263727_ref_002e_003




g16  $model

cp $model".log" $org_dir


