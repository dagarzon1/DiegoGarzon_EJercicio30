!/bin/bash

#PBS -l nodes=2:intel:ppn=6, mem=64gb,walltime=00:10:00
#PBS -M da.garzon1@uniandes.edu.co
#PBS -m abe
#PBS -N ejercicio27


module load anaconda/python3
cd $PBS_O_WORKDIR 
gcc -fopenmp walk.c -o walk.x
gcc -fopenmp advection.c -o advection.x
export OMP_NUM_THREADS=4

./advection.c
python advection.py adv_parallel.pdf

c++ advection_serial.c -o adv_ser.x

./adv_ser.x
python advection.py adv_serial.pdf

./walk.x >> walk.txt
c++ walk_serial.c -o w_ser.x
./w_ser.x >> walks.txt

python walk.py walks.txt
