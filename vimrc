call pathogen#incubate()
call pathogen#helptags()
" ------------------------------- GENERAL OPTIONS -----------------------------
set showcmd
set nu                  " line numbers
set nocompatible        " use Vim defaults (much better!)
set ruler               " show the cursor position all the time
set showmatch           " show matching opening bracket/paren. when closing
set incsearch           " incremental search (google instant)!
set ignorecase          " don't pay attention to case when searching
set smartcase           " if 1 or more characters are upper case search
set hlsearch            " Always highlight search term
set autoindent          " Copy indent from current line when starting new line
set wildmenu            " Completion for commands
set mouse=a             " allow the mouse in the terminal
syntax on               " Always want syntax highlighting

filetype plugin on


" ------------------------------- SPACING -------------------------------------
set colorcolumn=80      " Show line at 80 columns
"set tw=79               " text width
set sw=4                " shift width
set sts=4               " soft tab stop (number of spaces to insert for tab)
set ts=4                " tab stop
set expandtab           " Expand tab characters to spaces
set wiw=80              " Min. number of columns in window
set bs=2                " allow backspacing over everything in insert mode
set autoindent          " Intelligent indenting based on previous line, etc. 
set wrap                " Wrap lines longer than textwidth (tw)

" ------------------------------- COLORS --------------------------------------
set t_Co=256
colorscheme wombat256
set cursorline
set cursorcolumn


" ----------------------------- WHITESPACE ------------------------------------
:set list!
:set list listchars=tab:>-,trail:.,extends:>

" ------------------------------- TAGS ----------------------------------------
" let &tags = findfile("tags", "**;")


" ------------------------------- MAPS ----------------------------------------
map <A-q>   :close<CR>
map <C-o>   :browse confirm e<CR>
map <C-h>   gT
map <C-j>   <C-d>
map <C-k>   <C-u>
map <C-l>   gt
map <C-p>   <C-w>q
map <C-o>   :tabnew 

" kk is easier to hit than Esc
inoremap kk <Esc>

" use '%%' to auto-complete current directory
cabbr <expr> %% expand('%:p:h')

" ------------------------------- Syntastic -----------------------------------
let g:syntastic_python_checkers = ['pylint']
