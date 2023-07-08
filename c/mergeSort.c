#include <stdio.h>
// #include <math.h>
// #include <stdlib.h>
#include <limits.h>

void merge(int arr[], int p, int q, int r)
{   
    int i, j, k;
    int n1 = q - p + 1;
    int n2 = r - q;

    int L[n1], R[n2];

    for (i = 1; i <= n1; i++)
    {
        L[i] = arr[p + i - 1];
    }
    for (j = 1; j <= n2; j++)
    {
        R[j] = arr[q + j];
    }

    i = 1;
    j = 1;

    L[n1 + 1] = INT_MAX;
    R[n2 + 1] = INT_MAX;

    for (k = p; k <= r; k++)
    {
        if (L[i] <= R[j])
        {
            arr[k] = L[i];
            i = i + 1;
        }
        else
        {
            arr[k] = R[j];
            j = j + 1;
        }
    }
}

void mergeSort(int arr[], int p, int r)
{
    if (p < r)
    {
        int q = (p + r) / 2;
        mergeSort(arr, p, q);
        mergeSort(arr, q + 1, r);
        merge(arr, p, q, r);
    }
}

void printArr(int arr[], int size)
{
    int i;
    for (i = 0; i < size; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main()
{
    int arr[] = {2, 4, 5, 7, 1, 2, 3, 6};
    int arr_size = sizeof(arr) / sizeof(arr[0]);

    mergeSort(arr, 0, arr_size - 1);
    printArr(arr, arr_size);
    return 0;
}
