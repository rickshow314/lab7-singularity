#!/bin/bash
module load singularity
module load anaconda
echo "a) El comando hostname en ibsen y en el contenedor my-python.sif de Singularity"
hostname
echo hostname de la imagen de singularity
singularity run my-python.sif hostname
echo "b) El comando cat /etc/os-release en ibsen y en el contenedor my-python.sif de Singularity"
cat /etc/os-release
echo comando cat singularity
singularity run my-python.sif cat /etc/os-release
echo "c) El comando pwd en ibsen y en el contenedor my-python.sif de Singularity"
pwd
echo comando pwd singularity
singularity run my-python.sif pwd
echo "d) El comando ls -l /home en ibsen y en el contenedor my-python.sif de Singularity"
ls -l /home
echo comando ls -l singularity
singularity run my-python.sif ls -l /home
echo "e) El comando python –version en ibsen y en el contenedor my-python.sif de Singularity"
python --version
echo comando python singularity
singularity run my-python.sif python --version
echo "Ejecuta f ) El notebook kmer-solution.ipynb que tienes en el subdirectorio source dentro de la imagen de Singularity, y el notebook kmer"
ipython /home/alumno33/trabajos/lab7-singularity/source/kmer-solution.ipynb
echo ejecutar kmer-solution de la imagen
ipython /home/alumno33/trabajos/lab7-singularity/my-python.sif
singularity exec my-python.sif ipython /kmer-solution.ipynb
