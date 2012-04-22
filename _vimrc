set nocompatible

filetype on
filetype indent on
filetype plugin on

set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
set backup

set enc=utf-8
set fenc=utf-8
"set fencs=iso-2022-jp,enc-jp,utf-8,sjis

syntax on

"<C-Space>でomni補完
"imap <C-Space> <C-x><C-o>

"matchhit
:source $VIMRUNTIME/macros/matchit.vim

"set cmdheight=2

au FileType c,cpp,perl,java set cindent
au FileType python set tabstop=4 shiftwidth=4 
au FileType ruby  set nowrap tabstop=2 tw=0 sw=2 expandtab
au FileType eruby set nowrap tabstop=2 tw=0 sw=2 expandtab

" normal ruby & eruby
au BufNewFile *.rhtml set ft=eruby fenc=utf-8
au BufNewFile *.erb   set ft=eruby fenc=utf-8
au BufNewFile *.rb    set ft=ruby  fenc=utf-8

"backup
set backup
set backupdir=$HOME/.vim-backup
let &directory = &backupdir

map <LEFT> <ESC>:bp<CR>
map <RIGHT> <ESC>:bn<CR>

set visualbell t_vb=

let g:qb_hotkey="<space><space>"
