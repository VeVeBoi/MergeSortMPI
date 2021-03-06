#!/bin/bash
mpicc -g -Wall -o Mergesort Mergesort.c

echo "| Num Cores | Total elements | Total Time |"

mpirun -np 1 ./Mergesort 100000
mpirun -np 2 ./Mergesort 100000
mpirun -np 3 ./Mergesort 100000
mpirun -np 4 ./Mergesort 100000
mpirun -np 8 ./Mergesort 100000
mpirun -np 9 ./Mergesort 100000
mpirun -np 16 ./Mergesort 100000
mpirun -np 17 ./Mergesort 100000
mpirun -np 32 ./Mergesort 100000
mpirun -np 35 ./Mergesort 100000
mpirun -np 64 ./Mergesort 100000
mpirun -np 67 ./Mergesort 100000
mpirun -np 128 ./Mergesort 100000
mpirun -np 130 ./Mergesort 100000
echo "--------------------------------------------"
mpirun -np 1 ./Mergesort 200000
mpirun -np 2 ./Mergesort 200000
mpirun -np 3 ./Mergesort 200000
mpirun -np 4 ./Mergesort 200000
mpirun -np 8 ./Mergesort 200000
mpirun -np 9 ./Mergesort 200000
mpirun -np 16 ./Mergesort 200000
mpirun -np 17 ./Mergesort 200000
mpirun -np 32 ./Mergesort 200000
mpirun -np 35 ./Mergesort 200000
mpirun -np 64 ./Mergesort 200000
mpirun -np 67 ./Mergesort 200000
mpirun -np 128 ./Mergesort 200000
mpirun -np 130 ./Mergesort 200000
echo "--------------------------------------------"
mpirun -np 1 ./Mergesort 1000000
mpirun -np 2 ./Mergesort 1000000
mpirun -np 3 ./Mergesort 1000000
mpirun -np 4 ./Mergesort 1000000
mpirun -np 8 ./Mergesort 1000000
mpirun -np 9 ./Mergesort 1000000
mpirun -np 16 ./Mergesort 1000000
mpirun -np 17 ./Mergesort 1000000
mpirun -np 32 ./Mergesort 1000000
mpirun -np 35 ./Mergesort 1000000
mpirun -np 64 ./Mergesort 1000000
mpirun -np 67 ./Mergesort 1000000
mpirun -np 128 ./Mergesort 1000000
mpirun -np 130 ./Mergesort 1000000
echo "--------------------------------------------"
mpirun -np 1 ./Mergesort 2000000
mpirun -np 2 ./Mergesort 2000000
mpirun -np 3 ./Mergesort 2000000
mpirun -np 4 ./Mergesort 2000000
mpirun -np 8 ./Mergesort 2000000
mpirun -np 9 ./Mergesort 2000000
mpirun -np 16 ./Mergesort 2000000
mpirun -np 17 ./Mergesort 2000000
mpirun -np 32 ./Mergesort 2000000
mpirun -np 35 ./Mergesort 2000000
mpirun -np 64 ./Mergesort 2000000
mpirun -np 67 ./Mergesort 2000000
mpirun -np 128 ./Mergesort 2000000
mpirun -np 130 ./Mergesort 2000000
echo "--------------------------------------------"
mpirun -np 1 ./Mergesort 4000000
mpirun -np 2 ./Mergesort 4000000
mpirun -np 3 ./Mergesort 4000000
mpirun -np 4 ./Mergesort 4000000
mpirun -np 8 ./Mergesort 4000000
mpirun -np 9 ./Mergesort 4000000
mpirun -np 16 ./Mergesort 4000000
mpirun -np 17 ./Mergesort 4000000
mpirun -np 32 ./Mergesort 4000000
mpirun -np 35 ./Mergesort 4000000
mpirun -np 64 ./Mergesort 4000000
mpirun -np 67 ./Mergesort 4000000
mpirun -np 128 ./Mergesort 4000000
mpirun -np 130 ./Mergesort 4000000
echo "--------------------------------------------"
mpirun -np 1 ./Mergesort 8000000
mpirun -np 2 ./Mergesort 8000000
mpirun -np 3 ./Mergesort 8000000
mpirun -np 4 ./Mergesort 8000000
mpirun -np 8 ./Mergesort 8000000
mpirun -np 9 ./Mergesort 8000000
mpirun -np 16 ./Mergesort 8000000
mpirun -np 17 ./Mergesort 8000000
mpirun -np 32 ./Mergesort 8000000
mpirun -np 35 ./Mergesort 8000000
mpirun -np 64 ./Mergesort 8000000
mpirun -np 67 ./Mergesort 8000000
mpirun -np 128 ./Mergesort 8000000
mpirun -np 130 ./Mergesort 8000000
echo "--------------------------------------------"
mpirun -np 1 ./Mergesort 10000000
mpirun -np 2 ./Mergesort 10000000
mpirun -np 3 ./Mergesort 10000000
mpirun -np 4 ./Mergesort 10000000
mpirun -np 8 ./Mergesort 10000000
mpirun -np 9 ./Mergesort 10000000
mpirun -np 16 ./Mergesort 10000000
mpirun -np 17 ./Mergesort 10000000
mpirun -np 32 ./Mergesort 10000000
mpirun -np 35 ./Mergesort 10000000
mpirun -np 64 ./Mergesort 10000000
mpirun -np 67 ./Mergesort 10000000
mpirun -np 128 ./Mergesort 10000000
mpirun -np 130 ./Mergesort 10000000
echo "--------------------------------------------"
mpirun -np 1 ./Mergesort 100000000
mpirun -np 2 ./Mergesort 100000000
mpirun -np 3 ./Mergesort 100000000
mpirun -np 4 ./Mergesort 100000000
mpirun -np 8 ./Mergesort 100000000
mpirun -np 9 ./Mergesort 100000000
mpirun -np 16 ./Mergesort 100000000
mpirun -np 17 ./Mergesort 100000000
mpirun -np 32 ./Mergesort 100000000
mpirun -np 35 ./Mergesort 100000000
mpirun -np 64 ./Mergesort 100000000
mpirun -np 67 ./Mergesort 100000000
mpirun -np 128 ./Mergesort 100000000
mpirun -np 130 ./Mergesort 100000000
echo "--------------------------------------------"
mpirun -np 1 ./Mergesort 200000000
mpirun -np 2 ./Mergesort 200000000
mpirun -np 3 ./Mergesort 200000000
mpirun -np 4 ./Mergesort 200000000
mpirun -np 8 ./Mergesort 200000000
mpirun -np 9 ./Mergesort 200000000
mpirun -np 16 ./Mergesort 200000000
mpirun -np 17 ./Mergesort 200000000
mpirun -np 32 ./Mergesort 200000000
mpirun -np 35 ./Mergesort 200000000
mpirun -np 64 ./Mergesort 200000000
mpirun -np 67 ./Mergesort 200000000
mpirun -np 128 ./Mergesort 200000000
mpirun -np 130 ./Mergesort 200000000
echo "--------------------------------------------"
mpirun -np 1 ./Mergesort 1000000000
mpirun -np 2 ./Mergesort 1000000000
mpirun -np 3 ./Mergesort 1000000000
mpirun -np 4 ./Mergesort 1000000000
mpirun -np 8 ./Mergesort 1000000000
mpirun -np 9 ./Mergesort 1000000000
mpirun -np 16 ./Mergesort 1000000000
mpirun -np 17 ./Mergesort 1000000000
mpirun -np 32 ./Mergesort 1000000000
mpirun -np 35 ./Mergesort 1000000000
mpirun -np 64 ./Mergesort 1000000000
mpirun -np 67 ./Mergesort 1000000000
mpirun -np 128 ./Mergesort 1000000000
mpirun -np 130 ./Mergesort 1000000000