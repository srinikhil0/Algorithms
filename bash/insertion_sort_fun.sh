#!/bin/bash
function insertion_sort(){
arr=("$@")
n=${#arr[@]}
for ((j=0;j<n;j++))
do
i=$j-1
key=${arr[$j]}
while ((i>=0 && arr[i]>key))
do
arr[$i+1]=${arr[$i]}
i=$i-1
done
arr[i+1]=$key
done
}

array=(5 2 4 6 1 3)
insertion_sort "${array[@]}"
for((i=0;i<n;i++))
do
echo ${arr[$i]}
done
