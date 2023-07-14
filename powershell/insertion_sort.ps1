function insertion_sort($arr){
    $n = $arr.Length
    for($j=0;$j -lt $n; $j++){
        $i=$j-1
        $key=$arr[$j]
        while($i -ge 0 -and $arr[$i] -gt $key){
            $arr[$i+1]=$arr[$i]
            $i--
        }
        $arr[$i+1]=$key
    }
    return $arr
}

$array = @(31, 41, 59, 26, 41, 58)
$sorted_array = insertion_sort $array

foreach($item in $sorted_array){
    Write-Host $item
}
