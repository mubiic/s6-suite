./getupstream.sh
set -ex
echo "upstream =+ develop -> master"
git checkout develop && git rebase -Xours upstream 
set +ex
echo "Manually Run: git checkout master && git rebase -Xours develop"
echo "git push --all origin -u  to push all changes to remote"
