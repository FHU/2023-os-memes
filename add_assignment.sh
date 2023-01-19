#!/bin/sh
# Usage: add_assignment.sh <assignment_prefix>

#Rotate who gets the assignment
students1=( Soyokaze-42 )
students2=()
students3=()
students_all=("Soyokaze-42" "horseghc" "tbone68" "PierceKlugs" "lmraine" "GuysItsMeZach" "GreeneGunnar14" "kadenbking" "JudahRininger" "Ceslick11" "LouviersJ" "nathanlewis2001" "LTsoccer" "marvelkel17" "madisoncagle" "CharlieBroderick" "ColtB" "SeanJaniec" "savannah-martin" "dannyrich24" "allisoncwalker" "jaydondulgar" "tr4v1sty" "SheltonBlackwell" "AddisonAdcock" "BlakeGriswell" "sflowers51")

students=$students_all
due=2023-01-24

gh api \
  --method POST \
  -H "Accept: application/vnd.github.v3+json" \
  /repos/FHU/2023-os-memes/milestones \
  -f title="$1 Memes" \
  -f state='open' \
  -f description="Milestone for tracking our students' creation of memes for the chapter on $1" \
  -f due_on="2023-01-24T05:00:00Z"

for student in "${students_all[@]}"
do 
git checkout -b $student-$1-meme main
cp post_template.md _posts/$due-$student-$1-meme.md
git add _posts/$due-$student-$1-meme.md
git commit -m "Add $student's meme for $1"
git push origin $student-$1-meme

gh pr create --draft --title "$student-$1-meme" --body "$student's meme for $1" --base main --head $student-$1-meme --milestone "$1 Memes" --assignee $student
done