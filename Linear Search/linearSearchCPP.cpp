#include <iostream>
using namespace std;

int linearSearch(int arr[], int n, int v)
{
    int i;
    for (i = 0; i < n; i++)
    {
        if (arr[i] == v)
        {
            return i;
        }
    }
    return -1;
}

int main()
{
    int arr[] = {31, 41, 59, 26, 41, 58};
    int n = sizeof(arr) / sizeof(arr[0]);
    int v = 25;
    int search = linearSearch(arr, n, v);
    (search == -1) ? cout << "No match found" << endl : cout << v << " found at position " << search;
}