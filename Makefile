all:
	gcc-11 -g -Wall -o Mergesort Mergesort.c

2:
	mpicc -g -Wall -o MergeSortMPI MergeSortMPI.c

3: 
	mpicc -g -Wall -o mSortMPI mSortMPI.c

4:
	mpicc -g -Wall -o help help.c

run2:

	mpirun -np 4 ./MergeSortMPI 16

run4:
	mpirun -np 4 ./help 

run3:
	mpirun -np 16 ./mSortMPI 100000000

clean:
	rm Mergesort
	rm MergeSortMPI