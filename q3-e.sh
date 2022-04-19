#! /bin/bash
#word_count=$(wc -w $1 | awk '{print $1}')
word_array=()
cat $1 | tr ' ' '\n'| sed -E '/^\s*$/d' | while read value
do
#echo $value
if [[ ! " ${word_array[*]} " =~ " ${value} " ]]; then

	word_array+=($value);
	count=`grep -c $value $1`
#	echo "$word: $count"
	if (( count > 1 ));then
	
	 	echo "Word: "$value" - Count of repetition: "$count""
	fi
fi

done

