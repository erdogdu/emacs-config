set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
syntax enable
set number
set relativenumber
set nowrap

" Use specific spacing for different formats
" expandtab, et:    <Tab> -> spaces
" tabstop, ts:      length of a <Tab>
" shiftwidth, sw:   spaces for autoindent
" softtabstop, sts: how many spaces a <Tab> inserts or <BS> removes
set et ts=4 sw=4 sts=4
au FileType verilog,matlab setl et ts=4 sw=4 sts=4
au FileType lua setl et ts=3 sw=3 sts=3
au FileType c,cuda,tex,bib setl et ts=2 sw=2 sts=2
au FileType gitcommit setl tw=0 cc=0

" Status bar formatting
set laststatus=2
set statusline=[%n]%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" molokai settings """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi diffAdded   ctermbg=NONE ctermfg=10 cterm=NONE guibg=NONE guifg=#B9FC32 gui=NONE
hi diffRemoved ctermbg=NONE ctermfg=9  cterm=NONE guibg=NONE guifg=#FF2676 gui=NONE
hi Conceal ctermbg=NONE guibg=NONE
hi link diffLine String
hi link diffSubname Normal
set textwidth=80 colorcolumn=81 cursorline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show tabs and trailing spaces.
set encoding=utf-8
set list listchars=tab:▸\ ,trail:·

" Unrecogised extensions fix
au BufRead,BufNewFile *.rockspec setl filetype=lua
au BufRead,BufNewFile *.plt setl filetype=gnuplot
au BufRead,BufNewFile *.md       setl filetype=markdown tw=0 cc=0
au BufRead,BufNewFile *.py       setl tw=120 cc=121

" Ask to clean all trailing white-spaces upon saving
autocmd BufWritePre * :%s/\s\+$//ec

" Set HighLight Search by default. :noh for toggling
set hls

" Wildmenu
set wildmenu

" Automatically switch between syntax and manual foldmethod
au FileType java,c,bib setlocal fdm=syntax fdc=4 aw
autocmd InsertLeave,WinEnter *.{java,c,bib} setlocal foldmethod=syntax
autocmd InsertEnter,WinLeave *.{java,c,bib} setlocal foldmethod=manual

" Split current file in two columns
noremap <silent> <Leader>vs :set noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>

" Extensions settings """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TeX settings
let g:tex_flavor = "latex"
au FileType tex,bib setlocal cc=0 wrap aw fdm=syntax tw=0 cole=2
au FileType tex,bib let b:delimitMate_quotes = '$'
au FileType tex,bib let b:delimitMate_matchpairs = "<:>,(:),[:],{:},`:'"
au FileType tex,bib let b:delimitMate_smart_matchpairs = '^\%(\w\|\!\|[£]\|[^[:space:][:punct:]]\)'

" Expand <CR>
let delimitMate_expand_cr = 1
let python_highlight_all = 1


