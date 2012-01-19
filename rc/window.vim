""""""""""""""""""
"" W I N D O W
""""""""""""""""""
set ruler          " shows cursor position in the lower right
set showcmd        " shows incomplete command to the left of the ruler
set winminheight=0 " allow windows to be 0 lines tall
set winminwidth=0  " allow windows to be 0 lines wide
set laststatus=2   " always show statusline

" set up statusline, ends up looking like this:
"
"   [1] window.vimrc [Preview] [vim,+]          0x00 @ l22 c51 (88%)
"
set statusline=
set statusline+=%n:\                      " buffer number
set statusline+=%f                        " filename
set statusline+=%<                        " truncate here if necessary
set statusline+=%10w                      " displays [Preview] if it is
set statusline+=\ [                       " fix spacing, open bracket
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=%M                        " + if modified, - if r/o
set statusline+=]                         " close bracket
set statusline+=%=                        " right-align remainder
set statusline+=0x%02B\                   " character hex value
set statusline+=@\ L%l\ C%c\ (%P)\        " position in file

"""""""""""""""
"" C O L O R
"""""""""""""""
set background=dark " use colors suitable for dark backgrounds
colorscheme default 
