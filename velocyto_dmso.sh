#!/bin/bash
#SBATCH --job-name=velocyto_dmso
#SBATCH --partition=igbmc
#SBATCH --mem=90G               # memory per node
#SBATCH --time=2-03:00            # time (DD-HH:MM)
#SBATCH --mail-user=managorh@igbmc.fr
#SBATCH --mail-type=ALL
### Output
#SBATCH --output=/shared/space2/molina/husainm/DNA_pertu/velocyto_dmso/dmso-%j.out

module load velocyto.py/
module load samtools
cd /shared/space2/molina/husainm/DNA_pertu/velocyto_dmso/

velocyto run -b /shared/space2/molina/husainm/DNA_pertu/DMSO_out/outs/filtered_feature_bc_matrix/barcodes.tsv -o /shared/space2/molina/husainm/DNA_pertu/velocyto_dmso/ -m /shared/space2/molina/husainm/DNA_pertu/mm10_rmsk.gtf /shared/space2/molina/husainm/DNA_pertu/DMSO_out/outs/possorted_genome_bam.bam /shared/space2/molina/Data/CellRanger/refdata-gex-mm10-2020-A/genes/genes.gtf