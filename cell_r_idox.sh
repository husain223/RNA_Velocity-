#!/bin/bash
#SBATCH --job-name=idox
#SBATCH --partition=igbmc
#SBATCH --mem=120G               # memory per node
#SBATCH --time=3-03:00            # time (DD-HH:MM)
#SBATCH --mail-user=managorh@igbmc.fr
#SBATCH --mail-type=ALL
### Output
#SBATCH --output=/shared/space2/molina/husainm/DNA_pertu/idox-%j.out

module load cellranger

cd /shared/space2/molina/husainm/DNA_pertu/

cellranger count --id=Idox_out \
--transcriptome=/shared/space2/molina/Data/CellRanger/refdata-gex-mm10-2020-A/ \
--fastqs=/shared/space2/molina/husainm/DNA_pertu/IDOX_FQ/ \
--sample=Idox
