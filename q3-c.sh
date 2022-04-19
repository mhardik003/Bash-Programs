#! /bin/bash
word_count=$(wc -w $1 | awk '{print $1}')
echo "Number of words = $word_count"

