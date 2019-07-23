set number

""" Nmaps
nmap <C-c> <ESC>
" remap up and down to up and down columnwise not linewise
nmap j gj
nmap k gk


""" Sets
" Highlight search mid search
set incsearch
" Don't be dumb about searching for case
set ignorecase
set smartcase
" Highlights current serach but provides a quick cancel function
set hlsearch
nmap \q :nohlsearch<CR>

call plug#begin()
" Plug 'jelera/vim-javascript-syntax', { 'for': '.js' }
Plug 'pangloss/vim-javascript'
Plug 'ajh17/Spacegray.vim'
Plug 'plasticboy/vim-markdown'
Plug 'nightsense/simplifysimplify'
Plug 'marciomazza/vim-brogrammer-theme'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'

call plug#end()

let g:goyo_width = 80
let g:goyo_height = 85
let g:goyo_liner = 0

"Spacegray settings
"colorscheme spacegrey
let g:spacegray_italicize_comments = 1

colorscheme brogrammer

"colorscheme simplifysimplify-dark
"let g:simplifysimplify_dark_CursorLineNr = 'off'
"let g:simplifysimplify_dark_LineNr = 'off'

" Tabbing settings
set tabstop=2     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=2  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs

" lightline settings
set noshowmode    " removes superflous -- INSERT --

" Markdown settings
let g:vim_markdown_folding_disabled = 1

" Clipboard/paste settings
set clipboard+=unnamed " vim will use the system clipboard to read from by default for pasting. This means that, instead of having to enter insert mode first you can simply use p to paste. It also means that if you yank within vim, it's available to paste elsewhere. 

set laststatus=2
