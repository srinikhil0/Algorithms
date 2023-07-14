function linear_search(arr, n, key){
    for(i=0;i<n;i++){
        if(arr[i]==key){
            return i
        }
    }
    return -1
}

const array = [31, 41, 26, 41, 58, 59]
const size = array.length
const v = 26
const result = linear_search(array, size, v)

if(result == -1){
    console.log('No match Found')
}else{
    console.log(`${v} is in position ${result+1}`)
}
