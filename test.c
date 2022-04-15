#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define SIZE 12

int main(int argc, char *argv[])
{
    int rank, size;  
    int sum = 0;         
    double rec_buf[100];     

    // the data to be distributed

    MPI_Init(&argc, &argv);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    int rem = SIZE%size; 
    int *sendcounts = malloc(sizeof(int)*size);
    int *displs = malloc(sizeof(int)*size);
    double data[SIZE];

    if(rank == 0){
        printf("this is the unsorted array:\n" );
        for(int i = 0; i < SIZE; i++){
            data[i] = ((double)rand()/(double)(RAND_MAX)) * 5.0;
            printf("%d : %lf\n", i,  data[i]);
        }
        printf("\n\n");
    }

    // calculate send counts and displacements
    for (int i = 0; i < size; i++) {
        sendcounts[i] = (SIZE)/size;
        if (rem > 0) {
            sendcounts[i]++;
            rem--;
        }

        displs[i] = sum;
        sum += sendcounts[i];
    }

    // print calculated send counts and displacements for each process
    if (0 == rank) {
        for (int i = 0; i < size; i++) {
            printf("sendcounts[%d] = %d\tdispls[%d] = %d\n", i, sendcounts[i], i, displs[i]);
        }
    }

    // divide the data among processes as described by sendcounts and displs
    MPI_Scatterv(&data, sendcounts, displs, MPI_DOUBLE, &rec_buf, 100, MPI_DOUBLE, 0, MPI_COMM_WORLD);

    // print what each process received
    printf("%d: ", rank);
    for (int i = 0; i < sendcounts[rank]; i++) {
        printf("%f\t", rec_buf[i]);
    }
    printf("\n");

    MPI_Finalize();

    free(sendcounts);
    free(displs);

    return 0;
}