
let g:author="tingkun"
let g:snips_author=g:author
let g:email="tingkunz@qq.com"
let g:company="."

nmap ti :AuthorInfoDetect<cr>


set nocursorline " don't highlight current line

" make and git files use real tabs
autocmd FileType make set noexpandtab
autocmd BufRead,BufNewFile .git* set noexpandtab

" 不创建备份文件
set nobackup

" 搜索时边键入边搜索
set incsearch



" 使用自定义snip
" let g:neosnippet#snippets_directory='~/.vim/bundle/custom-snippets/snippets'

" color scheme setting
"  colorscheme solarized " altercation/vim-colors-solarized
" colorscheme desert    " desert

"自动换行
set wrap


" t.php 保存时执行
autocmd! bufwritepost t.php !php %


