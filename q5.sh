#! /bin/bash
read string
#echo $string
let length=${#string}
for ((i=$length-1; i>=0;i--));
do
echo -n "${string:$i:1}"
done
echo
for ((i=$length-1; i>=0;i--));
do
char="${string:$i:1}"
printf -v num %d "'$char"
((num+=1))
printf -v newchar \\$(printf '%03o' "$num")
echo -n "$newchar"
done
echo
for ((i=($length-2)/2; i>=0;i--));
do
echo -n "${string:$i:1}"
done
#echo "Done printing the first half in reverse"
for ((i=($length-2)/2+1; i<$length;i++));
do
echo -n "${string:$i:1}"
done
echo
