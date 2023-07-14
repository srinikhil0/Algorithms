def merge(arr, p, q, r)
  n1=q-p+1
  n2=r-q
  l=Array.new(n1)
  r=Array.new(n2)

  for i in 0...n1
    l[i]=arr[p+i]
  end
  for j in 0...n2
    r[j]=arr[q+j+1]
  end

  i=0
  j=0
  k=p

  while i<n1 &&j<n2
    if l[i]<r[j]
      arr[k]=l[i]
      i = i+1
    else
      arr[k]=r[j]
      j = j+1
    end
    k = k+1
  end

  while i<n1
    arr[k]=l[i]
    i = i+1
    k = k+1
  end

  while j<n2
    arr[k]=r[j]
    j = j+1
    k = k+1
  end
end

def merge_sort(arr, p, r)
  if p<r
    q=(p+r)/2
    merge_sort(arr, p, q)
    merge_sort(arr, q+1, r)
    merge(arr, p, q, r)
  end
end

def print_arr(arr, s)
  for i in 0...s
    puts arr[i]
  end
end

array = [5,2,4,6,1,3,0]
size = array.length
merge_sort(array, 0, size-1)
print_arr(array, size)
