```
mkdir -p mydir/{colors/{basic,blended},shape,animals/{mammals,reptiles}}
```

```
touch mydir/{colors/{basic/{red,blue,green},blended/{yellow,orange,pink}},shape/{circle,square,cube},animals/{mammals/{platipus,bat,dog},reptiles/{snakes,crocodile,lizard}}}
```

```
touch mydir/{colors/{basic/{red.sh,blue.sh,green.sh},blended/{yellow.sh,orange.sh,pink.sh}},shape/{circle.sh,square.sh,cube.sh},animals/{mammals/{platipus.sh,bat.sh,dog.sh},reptiles/{snakes.sh,crocodile.sh,lizard.sh}}}
```

```
touch mydir/{colors/{basic/{red~,#blue#,green~},blended/{yellow~,#orange#,pink~}}~ape/{circle~,#square#,cube~},animals/{mammals/{platipus~,#bat#,dog~},reptiles/{snakes~,#crocodile#,lizard~}}}
```


```
echo -n $(python3 -c 'print("A"*40)')
```



```
printf "\n%s\n\n" "===== $(date +%Y-%m-%d\ %H:%M:%S) ====" >> ${HOME}/bin/brewInstallation.log
```


```
brew bundle --verbose --file=~/bin/Brewfile  | tee >> ${HOME}/bin/brewInstallation.log
```


```
git add -A
```
```
git status
```
```
git log
```
```
git diff
```

```
git remote -v
```
```
git branch -a
```
```
git commit -m "message"
```
```
git fetch
```
```
git pull origin master
```
```
git push origin master
```






