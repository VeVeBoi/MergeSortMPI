#!/bin/bash
mpicc -g -Wall -o mSortMPI mSortMPI.c

echo "| Num Cores | Total elements | Total Time | parallel time | last call |"

mpirun -np 1 ./mSortMPI 1000
mpirun -np 2 ./mSortMPI 1000
mpirun -np 3 ./mSortMPI 1000
mpirun -np 4 ./mSortMPI 1000
mpirun -np 8 ./mSortMPI 1000
mpirun -np 9 ./mSortMPI 1000
mpirun -np 16 ./mSortMPI 1000
mpirun -np 17 ./mSortMPI 1000

mpirun -np 1 ./mSortMPI 10000
mpirun -np 2 ./mSortMPI 10000
mpirun -np 3 ./mSortMPI 10000
mpirun -np 4 ./mSortMPI 10000
mpirun -np 8 ./mSortMPI 10000
mpirun -np 9 ./mSortMPI 10000
mpirun -np 16 ./mSortMPI 10000
mpirun -np 17 ./mSortMPI 10000

mpirun -np 1 ./mSortMPI 100000
mpirun -np 2 ./mSortMPI 100000
mpirun -np 3 ./mSortMPI 100000
mpirun -np 4 ./mSortMPI 100000
mpirun -np 8 ./mSortMPI 100000
mpirun -np 9 ./mSortMPI 100000
mpirun -np 16 ./mSortMPI 100000
mpirun -np 17 ./mSortMPI 100000

mpirun -np 1 ./mSortMPI 1000000
mpirun -np 2 ./mSortMPI 1000000
mpirun -np 3 ./mSortMPI 1000000
mpirun -np 4 ./mSortMPI 1000000
mpirun -np 8 ./mSortMPI 1000000
mpirun -np 9 ./mSortMPI 1000000
mpirun -np 16 ./mSortMPI 1000000
mpirun -np 17 ./mSortMPI 1000000

mpirun -np 1 ./mSortMPI 10000000
mpirun -np 2 ./mSortMPI 10000000
mpirun -np 3 ./mSortMPI 10000000
mpirun -np 4 ./mSortMPI 10000000
mpirun -np 8 ./mSortMPI 10000000
mpirun -np 9 ./mSortMPI 10000000
mpirun -np 16 ./mSortMPI 10000000
mpirun -np 17 ./mSortMPI 10000000