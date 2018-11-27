

" WinManager设置c================
" NERD_Tree集成到WinManager

" 键盘映射，同时加入防止因winmanager和nerdtree冲突而导致空白页的语句
nmap wm :WMToggle<CR>
" 设置winmanager的宽度，默认为25
let g:winManagerWidth=30
" 窗口布局
" let g:winManagerWindowLayout='NERDTree'   "'NERDTree|TagList'
" 如果所有编辑文件都关闭了，退出vim
let g:persistentBehaviour=0
