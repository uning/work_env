
"" taglist设置==========================
"" ctags
set tags+=~/.vim/systags
set tags+=./tags

"" let Tlist_Use_Right_Window=1 "把taglist窗口放在屏幕的右侧，缺省在左侧
"" let Tlist_Show_Menu=1 "显示taglist菜单
"" let Tlist_Auto_Open=1 "启动vim自动打开taglist
let g:tlist_php_settings = 'php;c:class;f:function' " php 不现实varible
nmap tl :Tlist<CR>

