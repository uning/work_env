"
" excute  *.vim files
"


let filelist = split(globpath(g:custom_dir, '*.vim'), '\n')
for vimconf in filelist
    execute 'source' vimconf
endfor
