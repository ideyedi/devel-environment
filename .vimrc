set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on

" set gruvbox option
set bg=dark								" dark mode
let g:gruvbox_italicize_strings=0
"let g:gruvbox_improved_strings=1
"let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light = 'hard'

" vim colorscheme
colorscheme gruvbox

" general vimrc set
set bs=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set history=0
set noexpandtab
set ai
set si
set showmatch
set tag=tags,./tags,../tags,../../tags,../../../tags,../../../../tags,../../../../../tags,../../../../../../tags
set autoindent       " 자동 들여쓰기
set cindent          " C 프로그래밍용 자동 들여쓰기
set smartindent      " 스마트한 들여쓰기
set wrap
set nowrapscan       " 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup         " 백업 파일을 안만듬
set ruler            " 화면 우측 하단에 현재 커서의 위치 줄,칸표시
set number           " 행번호 표시, set nu 도 가능
set hlsearch         " 검색어 강조, set hls 도 가능
set ignorecase       " 검색시 대소문자 무시, set ic 도 가능
set lbr 
set incsearch        " 키워드 입력시 점진적 검색
set laststatus=2     " 상태바 표시를 항상한다
set backspace=eol,start,indent "  줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set t_Co=256         " 색 조정
highlight Comment term=bold cterm=bold ctermfg=4
highlight Normal ctermbg=None

ab prosd    printk ( KERN_DEBUG "[%s:%d][eyedi]\n", __func__, __LINE__ );<LEFT><ESC>
ab sysosd   syslog ( LOG_LOCAL7 \| LOG_INFO, "[%s:%d]\n", __func__, __LINE__ );<LEFT><ESC>
