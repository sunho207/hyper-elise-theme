filetype plugin indent on

syntax on

silent e

set hidden

set backspace=indent,eol,start

set number

hi LineNr term=bold cterm=bold ctermfg=103

set tabstop=4

set shiftwidth=4

set expandtab

hi VertSplit cterm=NONE ctermfg=96

let NERDTreeMinimalUI=1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

let g:left = ''
let g:right = ''

set laststatus=2
set noshowmode
set statusline=
set statusline+=%1*\%{g:left}
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*\ %<%F%r%h%w\                         " File path, modified, readonly, helpfile, preview
set statusline+=%4*%{g:right}\ \                         " Separator
hi User0 cterm=bold
hi User1 ctermfg=103
hi User2 ctermfg=45 ctermbg=103 cterm=bold
hi User3 ctermfg=45 ctermbg=96
hi User4 ctermfg=96

set statusline+=%=                                       " Right Side

set statusline+=%4*%{g:left}
set statusline+=%5*\ \ %02l/%L\ %3p%%\                   " Line number / total lines, percentage of document
set statusline+=%4*%{g:right}\ \                         " Separator

set statusline+=%4*%{g:left}
set statusline+=%6*\ %{g:currentmode[mode()]}\  " The current mode
set statusline+=%4*%{g:right}\ \                         " Separator
hi User5 ctermfg=50 ctermbg=96
hi User6 ctermfg=45 ctermbg=96 cterm=bold

let g:NERDTreeStatusline = '%#NonText#'

nmap <C-n> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')

call plug#end()
