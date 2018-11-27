
##Intro
personal vim configs
For EverVim or spf13 or other

##Use
add the following code to vim config file
```
let g:custom_dir = $HOME . '/gitrepo/vimcustom'
execute 'source' g:custom_dir.'/main.vimrc'
```
