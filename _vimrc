set nocompatible
filetype off
set shellslash

set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'rakr/vim-one'
Plugin 'preservim/nerdtree'
Plugin 'godlygeek/tabular' 
Plugin 'joker1007/vim-markdown-quote-syntax'
Plugin 'Yggdroot/LeaderF'
Plugin 'mhinz/vim-startify'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ferrine/md-img-paste.vim'
Plugin 'voldikss/vim-translator'
call vundle#end()  

filetype plugin indent on

"解决乱码问题
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1,gbk,gb18030,gk2312
if has("win32")
 set fileencoding=chinese
else
 set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle提示信息输出乱码
language messages zh_CN.utf-8

set guifont=Consolas:h11:cANSI:qDRAFT
set number
syntax on
"去掉菜单栏和工具栏
set guioptions=
set tabstop=4
set expandtab
set shiftwidth=4
set encoding=utf-8
set showmatch
set mouse=a
set autoindent
set smartindent
set showcmd
set t_Co=256
set hlsearch
set timeoutlen=500
let mapleader=' '
"关闭提示音和闪屏
set vb t_vb=
au GuiEnter * set t_vb=
"解决back键不能删除的问题
set backspace=2
"主题设置
set background=light
let g:one_allow_italics = 1
colorscheme one 
if (has("termguicolors"))
    set termguicolors
endif
"支持用python写的插件
set pythonthreedll=python36.dll

"LeaderF配置
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
noremap <silent> <Leader>f :Leaderf file<CR>
noremap <silent> <Leader>l :Leaderf line<CR>
noremap <silent> <Leader>g :Leaderf rg<CR>


"UltiSnips配置
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories=[$VIM."/vimfiles/ultisnips"]

"markdowm复制图片配置
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>

"翻译插件配置
let g:translator_window_type='popup'
let g:translator_default_engines=['bing']
nmap <silent> <Leader>t <Plug>TranslateW
vmap <silent> <Leader>t <Plug>TranslateWV

"窗口配置
noremap <silent> sv :vsp<CR>
noremap <silent> sp :sp<CR>
noremap <silent> sc <C-w>c<CR>
noremap <silent> so <C-w>o<CR>

noremap <silent> s> :vertical resize +20<CR>
noremap <silent> s< :vertical resize -20<CR>
noremap <silent> s= <C-w>=
noremap <silent> sj :resize +10<CR>
noremap <silent> sk :resize -10<CR>

noremap <silent> <A-h> <C-w>h
noremap <silent> <A-j> <C-w>j
noremap <silent> <A-k> <C-w>k
noremap <silent> <A-l> <C-w>l

"NERDTree配置
noremap <silent> <C-n> :NERDTree<CR>
noremap <silent> <Leader>n :NERDTreeToggle<CR>

"tab配置
noremap <silent> <C-c> :tabclose<CR>
noremap <silent> <C-h> :tabprevious<CR>
noremap <silent> <C-l> :tabnext<CR>

noremap <silent> <Leader>s :Startify<CR>

"复制粘贴
noremap <silent> <Leader>y "*y
noremap <silent> <Leader>v "*p
inoremap <silent> <Leader>v <C-r>*
