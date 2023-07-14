<?php
function insertionSort(&$arr, $n){
    for($j=1; $j<$n; $j++){
        $key = $arr[$j];
        $i=$j-1;
        while($i>=0 && $arr[$i]>$key){
            $arr[$i+1]=$arr[$i];
            $i = $i-1;
        }
        $arr[$i+1]=$key;
    }
}

function printarr(&$arr, $n){
    for($i=0;$i<$n;$i++){
        echo $arr[$i]. " ";
    }
    echo "\n";
}

$arr = array(5,2,4,6,1,3);
$n = sizeof($arr);
insertionSort($arr, $n);
printarr($arr, $n);
?>
