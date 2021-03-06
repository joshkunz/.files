set nocompatible

"Add Pathogen
call pathogen#infect()

syntax enable

" Helper functions
function! MakeBright()
    set background=light
endfunction

function! MakeDark()
    set background=dark
endfunction

colorscheme solarized
"colorscheme darkblue

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

" Make backspace work like normal
set backspace=indent,eol,start

"read file changes
set autoread

" Let me abandon buffers with changes
set hidden

" Column numbering and file percentages
set ruler

" Enable modelines
set modeline
set modelines=1

"set backup
"set backupdir=~/.cache/vim

" Maybe
set cursorline 
" set cursorbind
set showmatch

"call MakeBright()
call MakeDark()

"Color Column
set colorcolumn=80

set number
" Linux font
set guifont=Dejavu\ Sans\ Mono\ 15
" Mac font
set guifont=Menlo\ Regular:h15

" Tabs
set tabstop=4
set shiftwidth=4
"set smartindent
set autoindent
"set cindent
set expandtab

" nmap vj <C-w>j
" nmap vk <C-w>k

filetype plugin on

" For pandoc syn plugin
let g:pandoc_no_folding = 1

augroup rcCmd
	autocmd!
    " Common no-extension text-files
    autocmd BufRead *{README,readme,LICENSE,license,INSTALL,install} setl spell
    autocmd BufRead *.go set syn=go
    " Text spell checking
    autocmd BufRead *.{text,txt} setl spell
    autocmd BufRead *.text setl syn=text
    " Change .md filetype to markdown by default
    autocmd BufRead *.{md,mkd,markdown} setl spell
    autocmd BufWinEnter *.{md,mkd,markdown} setl spell
    autocmd BufWinEnter *.tex setl noautoindent spell syntax=tex
    autocmd BufWinEnter *.gnu setl syn=gnuplot

    " More 80 column stuff
    autocmd BufWinEnter *.c setl colorcolumn=80
    autocmd BufWinEnter *.cc setl colorcolumn=80
    autocmd BufWinEnter *.h setl colorcolumn=80
    autocmd BufWinEnter *.go setl syn=go

    " More 80 column stuff
    autocmd BufWinEnter *.c setl colorcolumn=80
    autocmd BufWinEnter *.cc setl colorcolumn=80
    autocmd BufWinEnter *.h setl colorcolumn=80
    autocmd BufWinEnter *.go setl syn=go

    " More 80 column stuff
    autocmd BufWinEnter *.c setl colorcolumn=80
    autocmd BufWinEnter *.cc setl colorcolumn=80
    autocmd BufWinEnter *.h setl colorcolumn=80
    autocmd BufWinEnter *.go setl syn=go

    " More 80 column stuff
    autocmd BufWinEnter *.c setl colorcolumn=80
    autocmd BufWinEnter *.cc setl colorcolumn=80
    autocmd BufWinEnter *.h setl colorcolumn=80
    autocmd BufWinEnter *.go setl syn=go

    " More 80 column stuff
    autocmd BufWinEnter *.c setl colorcolumn=80
    autocmd BufWinEnter *.cc setl colorcolumn=80
    autocmd BufWinEnter *.h setl colorcolumn=80
    autocmd BufWinEnter *.go setl syn=go

    " More 80 column stuff
    autocmd BufWinEnter *.c setl colorcolumn=80
    autocmd BufWinEnter *.cc setl colorcolumn=80
    autocmd BufWinEnter *.h setl colorcolumn=80
    autocmd BufWinEnter *.go setl syn=go

    autocmd FileType gitcommit setl spell
    autocmd FileType Makefile setl noexpandtab

	" Python highlight over 84 char softlimit
	autocmd FileType python let w:m2=matchadd('ErrorMsg', '\%>84v.\+', -1)

    autocmd BufRead *.pl setl syn=prolog

    " CLIPS hilighting
    autocmd BufRead *.clp setl syn=art
    " Drools Hilighting
    autocmd BufRead *.drl setl syn=drools
    " Groovy hilighting in gradle buildfiles
    autocmd BufRead *.gradle setl syn=groovy
    autocmd BufRead {B,b}uildfile setl syn=ruby
    " Ninja hilighting in buildfiles
    autocmd BufRead */build.ninja setl syn=ninja
    " Forth Hilighting
    autocmd BufRead *.forth setl syn=forth
    " newLisp Hilighting
    autocmd BufRead *.lsp setl syn=newlisp
    autocmd BufRead *.clisp setl syn=lisp

    autocmd BufRead *.gvpr setl syn=gvpr

    autocmd BufRead *.nc setl syn=tcl
augroup END
