"==================
" COMMEN SET
"==================
"
" File encoding set
set fileencodings=utf-8,chinese,latin-1
set termencoding=utf-8
set encoding=utf-8

" Other set
set backspace=indent,eol,start
set number
set ruler
set hlsearch
"set incsearch
"set nowrap "No Divide A Line
"set backup "create an backup when open a file
set showcmd "show input cmd in right-bottom
colorscheme desert
set showmatch

"==============
" FILETYPE SET
"==============
" Filetype detect in ./vim/ftdetect/filetype.vim
filetype on
filetype plugin on

" Syntax set
" Syntax file in ./vim/syntax/filetype.vim
" Syntax files in ./vim/syntax/filetype/files
" Additional syntax files in ./vim/after/syntax/filetype.vim etc.
syntax enable "enable syntax
syntax on "appoint a sepcial ColorPlan instead the default

" Indent set
" For diff indent in diff files, config set in ./vim/after/plugin/filetype.vim
filetype indent on
set autoindent "Use same indent in newline
set expandtab "Tab is block not \t in storage
set tabstop=4 "A tab contains 4 blocks
set shiftwidth=4 "
set softtabstop=4 "Take block string as Tab

"===============
" CODING SET
"===============
" Fold
set foldmethod=indent "za: close/open a; zM: close all; zR: open all
set nofoldenable "dont fold at start

" Autocomplete
"inoremap { {}<LEFT><CR><CR><UP><TAB>

"=====================
" CONFIG WITH DIFF OS
"=====================
if has('win32')
    language messages zh_CN.utf-8
    set nobackup
elseif has('unix')

elseif has('mac')
    set nobackup
endif



function! SystemInfoGet()
    let system_type = system("uname -a | grep MacBook")
    if system_type == ""
        return 0
    else
        return 1
    endif
endfunction

function! MacBookConfig()
endfunction

let s:system_type = SystemInfoGet()

if s:system_type == 1
    call MacBookConfig()
endif

