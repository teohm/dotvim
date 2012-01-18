""""""""""""""""""
" E D I T I N G
""""""""""""""""""
syntax on        " turn on syntax highlighting
set number       " show line numbers
set showbreak=+  " display a + at the beginning of a wrapped line
set showmatch    " flash the matching bracket on inserting a )]} etc

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" use 2 space indents by default. specific filetypes are overridden
" in filetypes.vimrc
set softtabstop=2
set tabstop=2
set shiftwidth=2  " shift by spaces when using << and >> etc
set expandtab     " no tabs, just spaces.

" Using autocmd for this allows it to be reset every time you open a
" file, which keeps overrides from being persistent
autocmd FileType * set softtabstop=2 tabstop=2 shiftwidth=2 expandtab

set list                     " show whitespace
set listchars=tab:»·,trail:· " show tabs and trailing spaces
set listchars+=extends:»     " show a » when a line goes off the right
                             " edge of the screen
set listchars+=precedes:«    " show a « when a line goes off the left
                             " edge of the screen

"""""""""""""""""""
"" F O L D I N G
"""""""""""""""""""
set foldenable        " enable folding
set foldmethod=indent " use the syntax definitions' folding
set foldlevelstart=99 " start with all folds open when switching buffers
set foldcolumn=3      " adds two columns of fold status on the left-hand
                      " side of the screen

""""""""""""""""""
"" S E A R C H
""""""""""""""""""
set ignorecase " makes search patterns case-insensitive by default
set smartcase  " overrides ignorecase when the pattern contains
               " upper-case characters
set incsearch  " incremental search.


"""""""""""""""""""""""""""""
"" S W A P  A N D  U N D O
"""""""""""""""""""""""""""""
set directory=~/.vim/swapfiles,/var/tmp,/tmp,.

" enable persistent undo
if has("persistent_undo")
    set undofile
    set undodir=~/.vim/undofiles,/var/tmp,/tmp,.
endif
