

```
printf "\n%s\n\n" "===== $(date +%Y-%m-%d-%H%M%S) ====" >> ${HOME}/bin/brewInstallation.log
```


```
brew bundle --verbose --file=~/bin/Brewfile  | tee >> ${HOME}/bin/brewInstallation.log
```


```
git add -A
```

git status
git log
git remote -v
git branch -a

git commit -m "message"

git fetch
git push
