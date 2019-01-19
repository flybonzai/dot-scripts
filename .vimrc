" McKay Harris VIMRC

" Colors {{{
colorscheme molokai
syntax enable " enable syntax processing
set background=dark
" }}}

" Whitespace {{{
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set modelines=1
" }}}

" Search {{{
set incsearch " search as characters are entered
set hlsearch " highlights matches
" }}}

" Folding {{{
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested folds max
set foldmethod=indent " fold based on indent level
nnoremap <space> za
" }}}

" Keybindings {{{
nnoremap B ^
nnoremap E $

nnoremap <leader>u :GundoToggle<CR>
:imap jk <Esc>
" }}}

" Misc {{{
set number " show line numbers
set showcmd " show last command entered
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when necessary
set showmatch " highlight matching [({})]
" }}}

" vim:foldmethod=marker:foldlevel=0
