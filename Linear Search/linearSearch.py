def linearSearch(arr, n, v):
    for i in range(0,n):
        if arr[i] == v:
            return i
    return -1

arr = [31, 41, 59, 26, 41, 58]
n = len(arr)
v = 26
search = linearSearch(arr, n, v)
if search == -1:
    print("No match found")
else:
    print(v,"found at position", search)