function insertion_sort(arr){
    for(let j=0; j<arr.length; j++){
        let key = arr[j]
        let i = j-1
        while(i>=0 && arr[i]>key){
            arr[i+1] = arr[i]
            i=i-1
        }
        arr[i+1] = key
    }
}

const arr = [5, 2, 4, 6, 1, 3]
insertion_sort(arr)
console.log(arr)
