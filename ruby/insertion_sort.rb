def insertion_sort(arr)
  for j in 1..(arr.length-1)
    key=arr[j]
    i=j-1
    while i>=0 && arr[i]>key
      arr[i+1]=arr[i]
      i=i-1
    end
    arr[i+1]=key
  end
  return arr
end

array = [5,2,4,6,1,3]
p insertion_sort(array)
