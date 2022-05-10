all:
	mpicc -g -Wall -o Mergesort Mergesort.c

run:
	mpirun -np 4 ./Mergesort 1000