#!/bin/bash

function merge_sort() {
    local arr=("$@")
    local n=${#arr[@]}
    if [ $n -gt 1 ]; then
        local mid=$((n / 2))
        local L=("${arr[@]:0:mid}")
        local R=("${arr[@]:mid}")

        L=($(merge_sort "${L[@]}"))
        R=($(merge_sort "${R[@]}"))

        local i=0
        local j=0
        local k=0

        while ((i < ${#L[@]} && j < ${#R[@]})); do
            if ((L[i] <= R[j])); then
                arr[k]=${L[i]}
                ((i++))
            else
                arr[k]=${R[j]}
                ((j++))
            fi
            ((k++))
        done

        while ((i < ${#L[@]})); do
            arr[k]=${L[i]}
            ((i++))
            ((k++))
        done

        while ((j < ${#R[@]})); do
            arr[k]=${R[j]}
            ((j++))
            ((k++))
        done
    fi

    echo "${arr[@]}"
}

array=(2 4 5 7 1 2 3 6)
sorted_array=($(merge_sort "${array[@]}"))

for ((i = 0; i < ${#sorted_array[@]}; i++)); do
    echo "${sorted_array[i]}"
done
