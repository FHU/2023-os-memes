#!/bin/sh
# Usage: add_assignment.sh <assignment_prefix>

#Rotate who gets the assignment
#students1=( Soyokaze-42 )
students2=()
students3=()
students_all=( "Soyokaze-42" "horseghc" "tbone68" "PierceKlugs" "lmraine" "GuysItsMeZach" "GreeneGunnar14" "kadenbking" "JudahRininger" "Ceslick11" "LouviersJ" "nathanlewis2001" "LTsoccer" "marvelkel17" "madisoncagle" "CharlieBroderick" "ColtB" "SeanJaniec" "savannah-martin" "dannyrich24" "allisoncwalker" "jaydondulgar" "tr4v1sty" "SheltonBlackwell" "AddisonAdcock" "BlakeGriswell" "sflowers51" )

students=$students_all
due=2023-01-24


for student in "${students_all[@]}"
do 
echo gh pr create --draft --title "$student-$1-meme" --body "$student's meme for $1" --base main --head $student-$1-meme --milestone "$1 Memes" --assignee $student
done