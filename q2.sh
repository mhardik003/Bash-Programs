#! /bin/bash
sed '/^$/d' $1 | awk 'NF && !a[$0]++' | awk -F "~" '{print  $2" once said,\""$1"\""}' > speech.txt



