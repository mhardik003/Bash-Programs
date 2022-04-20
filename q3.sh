#! /bin/bash
filesize=$(wc -c $1 | awk '{print $1}')
echo "Size of the file = $filesize"
line_count=$(wc -l $1 | awk '{print $1}')
echo "Number of lines = $line_count"
word_count=$(wc -w $1 | awk '{print $1}')
echo "Numer of words = $word_count"
line_num=1
cat $1 | while read line;do
  printf "Line No: $line_num - Count of Words:$(echo $line | wc -w)"
echo
  ((line_num++))
done
cat $1 | tr ' ' '\n' | sort | uniq -c | awk '{
if($1!="1")
{
echo $1
 print "Word: "$2" - Count of repetition: "$1""
}
}'



