#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno33
#SBATCH -J sample
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END
#SBATCH --mail-user=ricardo.urdiales@um.es
#SBATCH --output=salida-out
#SBATCH --error=salida-err

module load singularity
singularity run blast_2.9.0--pl526h3066fca_4.sif gzip -d zebrafish.1.protein.faa.gz
singularity run blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot
singularity run blast_2.9.0--pl526h3066fca_4.sif blastp --query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt
