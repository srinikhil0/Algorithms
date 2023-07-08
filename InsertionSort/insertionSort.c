#include <stdio.h>
#include <math.h>

void INSERTIONSORT(int arr[], int n)
{
    int i, key, j;
    for (j = 1; j < n; j++)
    {
        key = arr[j];

        i = j - 1;
        while (i >= 0 && arr[i] > key)
        {
            arr[i + 1] = arr[i];
            i = i - 1;
        }
        arr[i + 1] = key;
    }
}

void printarr(int arr[], int n)
{
    int i;
    for (i = 0; i < n; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main()
{
    int arr[] = {5, 2, 4, 6, 1, 3};
    int n = sizeof(arr) / sizeof(arr[0]);

    INSERTIONSORT(arr, n);
    printarr(arr, n);

    return 0;
}
