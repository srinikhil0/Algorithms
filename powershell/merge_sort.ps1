function merge($arr, $p, $q, $r) {
    $n1 = $q - $p + 1
    $n2 = $r - $q

    $L = New-Object int[] $n1
    $R = New-Object int[] $n2

    for ($i = 0; $i -lt $n1; $i++) {
        $L[$i] = $arr[$p + $i]
    }
    for ($j = 0; $j -lt $n2; $j++) {
        $R[$j] = $arr[$q + $j + 1]
    }

    $i = 0
    $j = 0
    $k = $p

    while ($i -lt $n1 -and $j -lt $n2) {
        if ($L[$i] -le $R[$j]) {
            $arr[$k] = $L[$i]
            $i++
        }
        else {
            $arr[$k] = $R[$j]
            $j++
        }
        $k++
    }

    while ($i -lt $n1) {
        $arr[$k] = $L[$i]
        $i++
        $k++
    }

    while ($j -lt $n2) {
        $arr[$k] = $R[$j]
        $j++
        $k++
    }
}

function merge_sort($arr, $p, $r) {
    if ($p -lt $r) {
        $q = [math]::Floor(($p + $r) / 2)
        merge_sort $arr $p $q
        merge_sort $arr ($q + 1) $r
        merge $arr $p $q $r
    }
}

function print_arr($arr, $s) {
    for ($i = 0; $i -lt $s; $i++) {
        Write-Host $arr[$i]
    }
}

$array = @(31, 41, 59, 26, 41, 58)
$size = $array.Length
merge_sort $array 0 ($size - 1)
print_arr $array $size
