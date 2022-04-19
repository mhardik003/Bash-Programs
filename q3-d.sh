#! /bin/bash
line_num=1
cat $1 | while read line;do
  printf "Line No: $line_num - Count of Words:$(echo $line | wc -w)"
echo
  ((line_num++))
done

