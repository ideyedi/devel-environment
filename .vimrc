syntax on

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_transparent_bg = 1
set background=dark

colorscheme gruvbox
highlight Normal ctermbg=None

" general vimrc set
set nocompatible
set bs=2
set shiftwidth=4
set softtabstop=4
set history=0

set smartindent
set expandtab
set autoindent

set ai
set si
set showmatch
set tag=tags,./tags,../tags,../../tags,../../../tags,../../../../tags,../../../../../tags,../../../../../../tags
set wrap
set nowrapscan
set nobackup
set ruler
set number
set hlsearch
set ignorecase
set lbr 
set incsearch
set laststatus=2
set backspace=eol,start,indent
set t_Co=256

" abstract 
ab prosd    printk ( KERN_DEBUG "[%s:%d][eyedi]\n", __func__, __LINE__ );<LEFT><ESC>
ab sysosd   syslog ( LOG_LOCAL7 \| LOG_INFO, "[%s:%d]\n", __func__, __LINE__ );<LEFT><ESC>

abbr kotlin kotlinc -include-runtime

