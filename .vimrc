syntax on

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_transparent_bg = 1
set background=dark

colorscheme gruvbox
highlight Normal ctermbg=None

" general vimrc set
set nocompatible
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
set ignorecase       " 검색시 대소문자 무시, set ic 도 가능set lbr 
set lbr 
set incsearch        " 키워드 입력시 점진적 검색
set laststatus=2     " 상태바 표시를 항상한다
set backspace=eol,start,indent "  줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set t_Co=256         " 색 조정

" abstract 
ab prosd    printk ( KERN_DEBUG "[%s:%d][eyedi]\n", __func__, __LINE__ );<LEFT><ESC>
ab sysosd   syslog ( LOG_LOCAL7 \| LOG_INFO, "[%s:%d]\n", __func__, __LINE__ );<LEFT><ESC>

abbr kotlin kotlinc -include-runtime

