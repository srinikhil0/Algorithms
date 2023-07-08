class insertionSort {
    void sort(int arr[]) {
        int n = arr.length;
        int key, j;
        for (j = 1; j < n; j++) {
            key = arr[j];
            int i = j - 1;
            while (i >= 0 && arr[i] > key) {
                arr[i + 1] = arr[i];
                i = i - 1;
            }
            arr[i + 1] = key;
        }
    }

    static void printarr(int arr[]) {
        int i;
        for (i = 0; i < arr.length; i++) {
            System.out.println(arr[i] + " ");
        }
        System.out.println();
    }

    public static void main(String args[]) {
        int arr[] = { 5, 2, 4, 6, 1, 3 };
        insertionSort ob = new insertionSort();
        ob.sort(arr);
        printarr(arr);
    }
}