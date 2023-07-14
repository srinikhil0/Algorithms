# function merge_sort($arr){
#     if ($arr.Length -gt 1){
#         $mid = $arr.Length/2
#         $L = $arr[$mid..($arr.Length - 1)]
#         $R = $arr[0..($mid - 1)]

#         $L = merge_sort $L
#         $R = merge_sort $R
#         $i=0
#         $j=0
#         $k=0
#         while($i -lt $L.Length -and $j -lt $R.Length){
#             if($L[$i] -le $R[$j]){
#                 $arr[$k]=$L[$i]
#                 $i++
#             }else{
#                 $arr[$k]=$R[$j]
#                 $j++
#             }
#             $k++
#         }

#         while($i -lt $L.Length){
#             $arr[$k]=$L[$i]
#             $i++
#             $k++
#         }

#         while($j -lt $R.Length){
#             $arr[$k]=$L[$j]
#             $j++
#             $k++
#         }
#     }
#     return $arr
# }

# $array = @(31, 41, 59, 26, 41, 58)
# $sorted_array = merge_sort $array
# foreach($item in $sorted_array){
#     Write-Host $item
# }
