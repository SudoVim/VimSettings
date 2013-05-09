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


" ----------------------------- WHITESPACE ------------------------------------
:highlight ExtraWhitespace ctermbg=red guibg=red
:highlight HardTabs ctermbg=darkgreen guibg=lightgreen

:match ExtraWhitespace /\s\+$/
:2match HardTabs /\t\+/


" ------------------------------- TAGS ----------------------------------------
let &tags = findfile("tags", "**;")


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

" Get rid of search highlighting easily
nnoremap <leader><space> :noh<cr>

" Requires NERDTree plugin
nnoremap <silent> <F9> :NERDTreeToggle<CR>

" Space and Shift Space allow for faster movement
nnoremap <Space> <c-d>
nnoremap <S-Space> <c-u>

" Turn on relative number for easy copy/paste without counting lines
map <Leader>rel :set relativenumber<CR>
map <Leader>nrel :set nu<CR>

" Trim trailing whitespace
map <Leader>trim :%s/\s\+$//<CR>:w<CR>

" Use the following files for flash development
map <F2> 1G:r /luke/eflash/trunk/docs/file_header.c<CR>
map <F3> :r /luke/eflash/trunk/docs/function_header.c<CR>

" Use the following files for rs-flash development
"map <F2> 1G:r /home/nfs/docs/Standards/Texas\ Memory\ Systems/programming/ \
"           file_header_c.txt<CR>
"map <F3> :r /home/nfs/docs/Standards/Texas\ Memory\ Systems/programming/ \
"           function_header_c.txt<CR>

" Open a file in the same directory of the open file, regardless of
" the directory you spawned vim from
map <Leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>

" Show whats in the yankring (for easy copy/paste between windows)
map <Leader>ps :YRShow<CR>

vmap gl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
