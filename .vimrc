colorschem desert
set cin
set ts=8
set sw=8
set ruler
set number
set autoindent
set hlsearch
"set nowrapscan
"set novisualbell
"set noerrorbells
set vb t_vb=
set nocompatible
set nobackup
set backspace=indent,eol,start

"hi Comment ctermfg=Blue
"hi SpecialKey ctermfg=LightBlue
"hi Directory ctermfg=LightBlue
"""""""""""""""""""""""""""""'
set encoding=utf-8  
set fileencodings=utf-8,chinese,gbk,gb2312,gb18030,cp936,latin-1 

if has("win32")  
	set fileencoding=chinese  
else  
	set fileencoding=utf-8  
endif

"解决菜单乱码  
source $VIMRUNTIME/delmenu.vim  
source $VIMRUNTIME/menu.vim  
"解决consle输出乱码  
language messages zh_CN.utf-8 

"set *.cgi as shell script
au BufRead,BufNewFile *.inc set filetype=sh

"taglist
let Tlist_Show_One_File=1
let Tlist_Use_LEFT_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer'
map <F1> :Tlist<CR>

"cscope
set nocscopeverbose

"putty
if has("win32")

if has("terminfo")
  let &t_Co=16
  let &t_AB="\<Esc>[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm"
  let &t_AF="\<Esc>[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm"
else
  let &t_Co=16
  let &t_Sf="\<Esc>[3%dm"
  let &t_Sb="\<Esc>[4%dm"
endif

else
	let &t_Co=256
endif

"diff
if &diff
	syntax off
else
	syntax on
endif
