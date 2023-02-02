#!/bin/sh
# Usage: add_assignment.sh <assignment_prefix>

#Rotate who gets the assignment
students1=( JudahRininger GreeneGunnar14 lmraine AddisonAdcock allisoncwalker LTsoccer BlakeGriswell SeanJaniec CharlieBroderick )
students2=( tr4v1sty dannyrich24 kadenbking sflowers51 savannah-martin nathanlewis2001 SheltonBlackwell TristanHogan horseghc )
students3=( PierceKlugs jaydondulgar ColtB madisoncagle marvelkel17 tbone68 GuysItsMeZach Ceslick11 )
students_all=("Soyokaze-42" "horseghc" "tbone68" "PierceKlugs" "lmraine" "GuysItsMeZach" "GreeneGunnar14" "kadenbking" "JudahRininger" "Ceslick11" "nathanlewis2001" "LTsoccer" "marvelkel17" "madisoncagle" "CharlieBroderick" "ColtB" "SeanJaniec" "savannah-martin" "dannyrich24" "allisoncwalker" "jaydondulgar" "tr4v1sty" "SheltonBlackwell" "AddisonAdcock" "BlakeGriswell" "sflowers51" "TristanHogan")

due=2023-01-30

gh api \
  --method POST \
  -H "Accept: application/vnd.github.v3+json" \
  /repos/FHU/2023-os-memes/milestones \
  -f title="$1 Memes" \
  -f state='open' \
  -f description="Milestone for tracking our students' creation of memes for the chapter on $1" \
  -f due_on="2023-01-30T05:00:00Z"

for student in "${students1[@]}"
do 
git checkout -b $student-$1-meme main
cp post_template.md _posts/$due-$student-$1-meme.md
git add _posts/$due-$student-$1-meme.md
git commit -m "Add $student's meme for $1"
git push origin $student-$1-meme

gh pr create --draft --title "$student-$1-meme" --body "$student's meme for $1" --base main --head $student-$1-meme --milestone "$1 Memes" --assignee $student
done