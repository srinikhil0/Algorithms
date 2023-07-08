class MergeSort{
    protected static void merge(int arr[], int p, int q, int r) {
        int n1 = q - p + 1;
        int n2 = r - q;
        int[] L = new int[n1+1];
        int[] R = new int[n2+1];
        for (int i = 0; i < n1; ++i) {
            L[i] = arr[p + i];
        }
        for (int j = 0; j < n2; ++j) {
            R[j] = arr[q + j + 1];
        }
        L[n1] = Integer.MAX_VALUE;
        R[n2] = Integer.MAX_VALUE;
        int i = 0, j = 0;
        

        for (int k = p; k <= r; k++) {
            if (L[i] <= R[j]) {
                arr[k] = L[i];
                i=i+1;
            } else {
                arr[k] = R[j];
                j=j+1;
            }
        }
    }

    protected static void mergeSorting(int arr[], int p, int r) {
        if (p < r) {
            int q = (p + r) / 2;
            mergeSorting(arr, p, q);
            mergeSorting(arr, q + 1, r);
            merge(arr, p, q, r);
        }
    }

    static void printArr(int arr[]) {
        int size = arr.length;
        int i;
        for (i = 0; i < size; ++i) {
            System.out.println(arr[i] + " ");
        }
        System.out.println();
    }

    public static void main(String args[]) {
        int arr[] = { 2, 4, 5, 7, 1, 2, 3, 6 };
        mergeSorting(arr, 0, arr.length - 1);
        printArr(arr);
    }
}
