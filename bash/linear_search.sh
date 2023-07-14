function linear_search(){
    arr=("$@")
    n=$1
    v=$2
    for ((i=0;i<n;i++))
    do
    if ((arr[i] == v))
    then
    return $i
    fi
    done
    return -1
}


array=(31 41 59 26 41 58)
len=${#array[@]}
key=26
linear_search "${array[@]}" "len" "key"
result=$?
if [ $result -eq -1 ]
then
echo "No Match Found"
else
echo "Number $key, found at position, $result"
fi
