def linear_search(arr, n, key)
  for i in 0...n
    if key == arr[i]
      return i
    end
  end
  return -1
end

array = [5,2,4,6,1,3,0]
size = array.length
v = 0
result = linear_search(array, size, v)

if result == -1
  puts "No Match found"
else
  puts "#{v} found at position #{result+1}"
end
