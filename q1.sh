#!/bin/bash
sed '/^$/d' $1 | awk 'NF && !a[$0]++'

