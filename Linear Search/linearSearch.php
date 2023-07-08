<?php 
function linearSearch($arr, $v){
    for($i=0;$i<sizeof($arr);$i++){
        if($arr[$i] == $v){
            return $i;
        }
    }
    return -1;
}

$arr = array(31, 41, 59, 26, 41, 58);
$v = 26;

$search = linearSearch($arr, $v);
if($search == -1){
    echo "No match found";
}
else{
    echo $v," found at position ", $search;
}
?>