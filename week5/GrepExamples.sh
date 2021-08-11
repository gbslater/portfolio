#!/bin/bash

fromyear=2017
toyear=2018

echo "113." | grep "1133*"

echo -e "113.\n1133.\n11333.\n1123." | grep "1133*"

echo -e 'ball\ncall\nmall\ntall\nMall'| grep "[bcm]all"

echo -e "All,\nall,\nZebra.\nAhoy,test\nA," | grep -E '^[A-Z].*[.,]$'

echo -e "2012,12\n2017,34\n2018,54\n2018,56\n2017,54" | grep -iE "(2017|2018)"

echo -e 'prdxxx\ndadxxx' | grep "da*xxx"

echo -e 'prdxxx\ndadxxx\ndaaxxx\ndoxxx' | grep "d.*xxx"

echo -e 'ball\nall\nmall\ntall\nMall\nShall'| grep ".*all"