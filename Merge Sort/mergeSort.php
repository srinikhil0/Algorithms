<?php
function merge(&$arr){
    if (sizeof($arr)>1){
        $mid = sizeof($arr)/2;
        $L = array_slice($arr,0, $mid);
        $R = array_slice($arr,$mid);
        merge($L);
        merge($R);
        $i=0;
        $j=0;
        $k=0;
        while ($i<sizeof($L) && $j<sizeof($R)){
            if($L[$i]<=$R[$j]){
                $arr[$k] = $L[$i];
                $i=$i+1;
            }
            else{
                $arr[$k]=$R[$j];
                $j=$j+1;
            }
            $k=$k+1;
        }
        while($i<sizeof($L)){
            $arr[$k] = $L[$i];
            $i=$i+1;
            $k=$k+1;
        }
        while($j<sizeof($R)){
            $arr[$k]=$R[$j];
            $j=$j+1;
            $k=$k+1;
        }
    }
}

$arr=array(2,4,5,7,1,2,3,6);
merge($arr);
for($i=0;$i<sizeof($arr);$i++){
    echo $arr[$i]. " ";
}
echo "";
?>