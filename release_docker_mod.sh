set -e
check_flag=`git status | grep "nothing to commit, working tree clean"`
[ -z "$check_flag" ] && echo "please git commit or check git status" && exit 1
git push https://github.com/huang12zheng/docker-mods
docker build --no-cache . -t hzgood/mods:`git branch --show-current`
docker push hzgood/mods:`git branch --show-current`