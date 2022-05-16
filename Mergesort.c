#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <mpi.h>


void mergeSort(double arr[], int f, int l);
void merge(double arr[], int f, int m, int l);
double *mergeP(double *arr1, int left_size, double *arr2, int right_size);

void parallel(int argc, char** argv, int comm_sz, int rank, MPI_Comm comm);
void serial(int argc, char** argv);


int main(int argc, char** argv){
    int comm_sz, rank;
    MPI_Comm comm;

    MPI_Init(&argc, &argv);
    comm = MPI_COMM_WORLD;
    MPI_Comm_rank(comm, &rank);
    MPI_Comm_size(comm, &comm_sz);

    if(comm_sz > 1){
        parallel(argc, argv, comm_sz, rank, comm);
    }else{
        serial(argc, argv);
    }
    MPI_Finalize();
    return 0;
}

void serial(int argc, char** argv){
    double startTime, endTime;
    int n = atoi(argv[1]);
    double *original_array = malloc(n * sizeof(double));

    srand(1);
    for(int i = 0; i < n; i++){
        original_array[i] = ((double)rand()/(double)(RAND_MAX)) * 100.0;
    }
    
    startTime = MPI_Wtime();
    mergeSort(original_array, 0, n-1);
    endTime = MPI_Wtime();
    free(original_array);

    printf("%d | %d | %lf |\n", 1, atoi(argv[1]), endTime-startTime);
    
}

void parallel(int argc, char** argv, int comm_sz, int rank, MPI_Comm comm){
    int remaining;
    int sum = 0;
    double startTime;
    MPI_Status status;

    int n = atoi(argv[1]);

    double *original_array = NULL;
    if(rank == 0){
        original_array = malloc(n * sizeof(double));
    }
    int *sendcount = malloc(comm_sz * sizeof(int));
    int *displs = malloc(comm_sz * sizeof(int));

    remaining = n%comm_sz;
    for(int i = 0; i < comm_sz; i++){
        sendcount[i] = n/comm_sz;
        if(remaining > 0){
            sendcount[i]++;
            remaining--;
        }
        displs[i] = sum;
        sum += sendcount[i];
    }

    double *recBuffer = malloc(sendcount[rank] * sizeof(double));

    srand(1);

    if(rank == 0){
        for(int i = 0; i < n; i++){
            original_array[i] = ((double)rand()/(double)(RAND_MAX)) * 100.0;
        }
    }


    startTime = MPI_Wtime();
    MPI_Scatterv(original_array, sendcount, displs, MPI_DOUBLE, recBuffer, sendcount[rank], MPI_DOUBLE, 0, comm);

    MPI_Barrier(comm);

    mergeSort(recBuffer, 0, (sendcount[rank] - 1));

    double *sorted = NULL;
    if(rank == 0){
        sorted = malloc(n * sizeof(double));
    }

    int m;
    int step = 1;
    while(step < comm_sz){
        if(rank%(2*step)==0){
            if(rank+step < comm_sz){
                MPI_Recv(&m, sendcount[rank], MPI_DOUBLE, rank+step, 0, MPI_COMM_WORLD, &status);
                double *other = malloc(n * sizeof(double));
                MPI_Recv(other, m, MPI_DOUBLE, rank+step, 0, MPI_COMM_WORLD, &status);
                recBuffer = mergeP(recBuffer, sendcount[rank], other, m);
                sendcount[rank] = sendcount[rank] + m;
            }
        }
        else{
            int near = rank-step;
            MPI_Send(&sendcount[rank], 1, MPI_INT, near, 0, MPI_COMM_WORLD);
            MPI_Send(recBuffer, sendcount[rank], MPI_DOUBLE, near, 0, MPI_COMM_WORLD);
            break;
        }
        step = step*2;
    }
    
    double Serial_End_Time = MPI_Wtime();
    if(rank == 0){

        printf("%d | %d | %lf |\n", comm_sz, atoi(argv[1]), Serial_End_Time-startTime); 
    }

    free(sorted);
    free(original_array);
    free(recBuffer);
    free(sendcount);
    free(displs);
}

double *mergeP(double *arr1, int left_size, double *arr2, int right_size){
    int i = 0;
    int j = 0;
    int k = 0;
    double *aux;
    int tot_size = left_size + right_size;

    aux = malloc(tot_size * sizeof(double));
    while((i < left_size) && (j < right_size)){
        if(arr1[i] <= arr2[j]){
            aux[k++] = arr1[i++];
        }else{
            aux[k++] = arr2[j++];
        }
    }
    
    if(i >= left_size){
        for(int l = k; l< tot_size; l++, j++){
            aux[l] = arr2[j];
        }
    }else if(j >= right_size){
        for(int l = k; l < tot_size; l++, i++){
            aux[l] = arr1[i];
        }
    }
    for(int i = 0; i < left_size; i++){
        arr1[i] = aux[i];
    }
    for(int i = 0; i < right_size; i++){
        arr2[i] = aux[left_size + 1];
    }

    return aux;
}

void merge(double *arr, int f, int m, int l){
    int n1 = m - f + 1;
    int n2 = l - m;

    double *F = malloc(n1 * sizeof(double));
    double *L = malloc(n2 * sizeof(double));

    for(int i = 0; i < n1; i++){
        F[i] = arr[f + i];
    }
    for(int i = 0; i < n2; i++){
        L[i] = arr[m+1+i];
    }
    int i = 0;
    int j = 0;
    int k = f;
    while(i < n1 && j < n2){
        if(F[i] <= L[j]){
            arr[k] = F[i];
            i++;
        }else{
            arr[k] = L[j];
            j++;
        }
        k++;
    }

    while(i < n1){
        arr[k] = F[i];
        i++;
        k++;
    }

    while(j < n2){
        arr[k] = L[j];
        j++;
        k++;
    }

    free(F);
    free(L);
}

void mergeSort(double *arr, int f, int l){

    if(f < l){
        int m = f + (l-f)/2;
        mergeSort(arr, f, m);
        mergeSort(arr, m+1, l);
        merge(arr, f, m, l);
    }
}
