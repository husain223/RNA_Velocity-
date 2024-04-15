#!/bin/bash
#SBATCH --job-name=dmso
#SBATCH --partition=igbmc
#SBATCH --mem=100G               # memory per node
#SBATCH --time=2-03:00            # time (DD-HH:MM)
#SBATCH --mail-user=managorh@igbmc.fr
#SBATCH --mail-type=ALL
### Output
#SBATCH --output=/shared/space2/molina/husainm/DNA_pertu/dmso_-%j.out

module load cellranger

cd /shared/space2/molina/husainm/DNA_pertu/



cellranger count --id=DMSO_out \
--transcriptome=/shared/space2/molina/Data/CellRanger/refdata-gex-mm10-2020-A/ \
--fastqs=/shared/space2/molina/husainm/DNA_pertu/DMSO_FQ/ \
--sample=DMSO

