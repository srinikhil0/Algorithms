class linearSearch {
    public static int linSearch(int arr[], int v) {
        int n = arr.length;
        int i;
        for (i = 0; i < n; i++) {
            if (arr[i] == v) {
                return i;
            }
        }
        return -1;
    }

    public static void main(String args[]) {
        int arr[] = { 31, 41, 59, 26, 41, 58 };
        int v = 26;
        int search = linSearch(arr, v);
        if (search == -1) {
            System.out.println("No match found");
        } else {
            System.out.println(v + " found at position " + search);
        }
    }
}