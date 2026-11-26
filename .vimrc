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
" Highlights current search but provides a quick cancel function
set hlsearch
nmap \q :nohlsearch<CR>

" Tabbing settings
set tabstop=2     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=2  " indenting is 2 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs

" Clipboard/paste settings
set clipboard+=unnamed " yank/paste use the system clipboard

set laststatus=2
