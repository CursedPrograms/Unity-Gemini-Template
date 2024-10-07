@echo off
echo Adding the remote repository 'synthia'...
git remote add synthia https://github.com/SynthWomb/Synthia-Unity.git

echo Fetching from 'synthia'...
git fetch synthia

echo Checking out the 'main' branch...
git checkout main

echo Merging 'synthia/main' into 'main' with unrelated histories allowed and forcing to keep current branch changes...
git merge -X ours synthia/main --allow-unrelated-histories

echo Committing the merge...
git commit -m "Forced merge: Kept current branch changes from main"

echo Process complete!
pause
