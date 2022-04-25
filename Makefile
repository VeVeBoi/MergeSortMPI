all:
	mpicc -g -Wall -o Mergesort Mergesort.c

2:
	mpicc -g -Wall -o MergeSortMPI MergeSortMPI.c

3: 
	mpicc -g -Wall -o mSortMPI mSortMPI.c

4:
	mpicc -g -Wall -o help help.c

run:
	mpirun -np 1 ./Mergesort 5

run2:

	mpirun -np 4 ./MergeSortMPI 16

run4:
	mpirun -np 4 ./help 

run3:
	mpirun -np 2 ./mSortMPI 10000000

run3s:
	mpirun -np 1 ./mSortMPI 10000000

clean:
	rm Mergesort
	rm MergeSortMPI