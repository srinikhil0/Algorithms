function merge(arr, p, q, r){
    let i, j, k
    let n1 = q-p+1
    let n2 = r-q

    const L = new Array(n1)
    const R = new Array(n2)

    for (i=0; i<n1; i++){
        L[i]=arr[p+i]
    }
    for(j=0; j<n2; j++){
        R[j]=arr[q+j+1]
    }

    i=0
    j=0
    k=p

    while (i<n1 && j<n2){
        if(L[i]<R[j]){
            arr[k]=L[i]
            i++
        }
        else{
            arr[k]=R[j]
            j++
        }
        k++
    }

    while(i<n1){
        arr[k]=L[i]
        i++
        k++
    }

    while(j<n2){
        arr[k]=R[j]
        j++
        k++
    }
}

function merge_sort(arr, p, r){
    if(p<r){
        let q=Math.floor((p+r)/2)
        merge_sort(arr, p, q)
        merge_sort(arr, q+1, r)
        merge(arr, p, q, r)
    }
}

function print_arr(arr, s){
    for(let i=0;i<s;i++){
        console.log(arr[i])
    }
}

const array=[31, 41, 59, 26, 41, 58]
const size = array.length
merge_sort(array, 0, size-1)
print_arr(array, size)
