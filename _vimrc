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

"�����������
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1,gbk,gb18030,gk2312
if has("win32")
 set fileencoding=chinese
else
 set fileencoding=utf-8
endif
"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"���consle��ʾ��Ϣ�������
language messages zh_CN.utf-8

set guifont=Consolas:h11:cANSI:qDRAFT
set number
syntax on
"ȥ���˵����͹�����
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
"�ر���ʾ��������
set vb t_vb=
au GuiEnter * set t_vb=
"���back������ɾ��������
set backspace=2
"��������
set background=light
let g:one_allow_italics = 1
colorscheme one 
if (has("termguicolors"))
    set termguicolors
endif
"֧����pythonд�Ĳ��
set pythonthreedll=python36.dll

"LeaderF����
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
noremap <silent> <Leader>f :Leaderf file<CR>
noremap <silent> <Leader>l :Leaderf line<CR>
noremap <silent> <Leader>g :Leaderf rg<CR>


"UltiSnips����
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories=[$VIM."/vimfiles/ultisnips"]

"markdowm����ͼƬ����
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>

"����������
let g:translator_window_type='popup'
let g:translator_default_engines=['bing']
nmap <silent> <Leader>t <Plug>TranslateW
vmap <silent> <Leader>t <Plug>TranslateWV

"��������
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

"NERDTree����
noremap <silent> <C-n> :NERDTree<CR>
noremap <silent> <Leader>n :NERDTreeToggle<CR>

"tab����
noremap <silent> <C-c> :tabclose<CR>
noremap <silent> <C-h> :tabprevious<CR>
noremap <silent> <C-l> :tabnext<CR>

noremap <silent> <Leader>s :Startify<CR>

"����ճ��
noremap <silent> <Leader>y "*y
noremap <silent> <Leader>v "*p
inoremap <silent> <Leader>v <C-r>*
