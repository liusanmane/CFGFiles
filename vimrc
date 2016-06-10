set fileencodings=utf-8,chinese,latin-1
set termencoding=utf-8
set encoding=utf-8

set backspace=indent,eol,start
set number
set ruler
set hlsearch

syntax enable
colorscheme desert
set showmatch

set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

let s:system_type = SystemInfoGet()

if system_type == 1
    call MacBookConfig()
endif


function SystemInfoGet()
    let system_type = system("uname -a | grep MacBook")
    if system_type == ""
        return 0
    else
        return 1
    endif
endfunction

function MacBookConfig()
endfunction
