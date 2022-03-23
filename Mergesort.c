#include <stdio.h>
#include <stdlib.h>

void merge(int arr[], int f, int m, int l){
    int n1 = m - f + 1;
    int n2 = l - m;
    int F[n1], L[n2];

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
}

void mergeSort(int arr[], int f, int l){
    if(f < l){
        int m = f + (l-f)/2;
        mergeSort(arr, f, m);
        mergeSort(arr, m+1, l);
        merge(arr, f, m, l);
    }
}

void printArray(int arr[], int size){
    for (int i = 0; i < size; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
    
}

int main(void){
    int arraySize;
    printf("Write the array size: ");
    scanf("%d", &arraySize);
    int arr[arraySize];
    for(int i = 0; i < arraySize; i++){
        arr[i] = rand() % 10;
    }
    for(int i = 0; i < arraySize; i++){
        printf("%d ", arr[i]);
    }
    printf("\n");

    mergeSort(arr, 0, arraySize - 1);

    printf("Sorted list: \n");
    printArray(arr, arraySize);

    return 0;
}