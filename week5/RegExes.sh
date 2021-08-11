#!/bin/bash
# RegExes.sh

# Version Date        Author   Description
# 1.0     05-AUG-2021 G Slater Initial version

cd /home/student/scripts

echo "Files with sed statements"
echo -------------------------------------
grep -rE '\bsed\b'

echo "Files that have lines that start with the letter m"
echo ----------------------------------------------------
grep -rE '^m.*'

echo "Files that have lines with 3 digits"
echo ----------------------------------------------------
grep -rE '\<[0-9]{3}\>'

echo "All echo statements with at least three words"
echo ----------------------------------------------------
# grep -rP 'echo .*\"([a-zA-Z]+\s?\b){3,}"'
grep -rP 'echo .*\"[a-zA-Z]+\s[a-zA-Z]+\s[a-zA-Z]+(.*)"'

echo "All possible passwords"
echo ----------------------------------------------------
# grep -rP '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$'
# grep -rP '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])\S{8,}$'
grep -rP '(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])\S{8,}'

cd /home/student/scripts/portfolio/week5