#!/bin/sh
# Usage: add_assignment.sh <assignment_prefix>

#Rotate who gets the assignment
students1=( Soyokaze-42 )
students2=()
students3=()

students=$students1
due=2023-01-24

gh api \
  --method POST \
  -H "Accept: application/vnd.github.v3+json" \
  /repos/FHU/2023-os-memes/milestones \
  -f title="$1 Memes" \
  -f state='open' \
  -f description="Milestone for tracking our students' creation of memes for the chapter on $1" \
  -f due_on="2023-01-24T05:00:00Z"

for student in $students
do 
git checkout -b $student-$1-meme
cp post_template.md _posts/$due-$student-$1-meme.md
git add _posts/$due-$student-$1-meme.md
git commit -m "Add $student's meme for $1"
git push origin $student-$1-meme

gh pr create --draft --title "$student-$1-meme" --body "$student's meme for $1" --base main --head $student-$1-meme --milestone "$1 Memes" --assignee $student
done