function linear_search($arr, $len, $key){
    for($i=0;$i -lt $len;$i++){
        if( $arr[$i] -eq $key ){
            return $i
        }
    }
    return -1
}

$array = @(31, 41, 59, 26, 41, 58)
$len = $array.Length
$key = 26

$result = linear_search $array $len $key

if($result -eq -1){
    Write-Host "No Match Found"
}
else{
    Write-Host "$key found at position $result"
}
