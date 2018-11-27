
" keyboard shortcuts
inoremap jj <ESC>

" 打开当前目录
nnoremap to :Explore<CR>

" 快速打开文件
nnoremap tf :FufFile<CR>
nnoremap tb :FufBuffer<CR>

" 快速切换split窗口
nmap zz <C-w><C-w>

"tag快速追踪
nmap tt <C-t>
nmap tg <C-]>

"文件头信息不全
nmap ti :AuthorInfoDetect<cr>


" 在新tab打开当前文件所在的目录的文件
map nt :tabnew<CR> <ESC>:tabn<CR>:FufFile<CR>

" tab窗口切换
nmap <Space>  <Esc>:tabn<CR>

" 选中刚刚粘贴的行
nnoremap <leader>v V`]

" paste/nopaste 模式下 insert
nmap pi :set paste<CR>i
nmap npi :set nopaste<CR>i


" 非编辑模式下光标不随鼠标移动
nmap pm  :set mouse=i<CR>
nmap npm  :set mouse=a<CR>


"16进制切换
map e16 :%!xxd <CR>   " 16进制编辑
map er  :%!xxd -r<CR>  " 文本编辑




" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>		<C-V>

" Use CTRL-S for saving, also in Insert mode
noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<C-O>:update<CR>


" CTRL-Y is Redo (although not repeat); not in cmdline though
noremap <C-y> <C-R>
inoremap <C-y> <C-O><C-R>

" CTRL-A is Select all
noremap <C-a> gggH<C-O>G
inoremap <C-a> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-a> <C-C>gggH<C-O>G
onoremap <C-a> <C-C>gggH<C-O>G
snoremap <C-a> <C-C>gggH<C-O>G
xnoremap <C-a> <C-C>ggVG


