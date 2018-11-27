" 执行各种类型脚本

function! Execute_Script()
    :w
    if &filetype == 'php'
        let s:php_script_name=expand("%")
        if strpart(s:php_script_name,strlen(s:php_script_name)-8)=="Test.php"
            execute '!phpunit %'
        else
            execute '!php %'
        endif

	elseif &filetype == 'javascript'
        let s:node_script_name=expand("%")
        if strpart(s:node_script_name,strlen(s:node_script_name)-8)==".test.js"
            execute '!mocha %'
        else
            execute '!node %'
        endif
    elseif &filetype == 'python'
        execute '!python %'
    elseif &filetype == 'sh'
        execute '!bash -ex %'
    elseif &filetype == 'make'
        :make
    elseif &filetype == 'markdown' || &filetype == 'notes' 
        execute '!pandoc -f markdown -t html % > /tmp/markdown.html'
        execute '!open -a "Google Chrome.app" file:///tmp/markdown.html'
        "execute '!x-www-browser file:///tmp/markdown.html'
    elseif &filetype == 'lua'
        execute '!lua %'
    endif
endfunction

" 调用php 检查当前文件的语法
map <F5> :call Execute_Script()<CR>
map <leader>r :call Execute_Script()<CR>
