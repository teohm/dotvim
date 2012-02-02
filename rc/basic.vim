""""""""""""""""
"" B A S I C
""""""""""""""""
set nocompatible " to hell with vi compatibility!
set wildmenu     " fancy command completion menu!
set modelines=1  " enable modelines
set visualbell   " flash screen when error, instead of annoying bell
" Miscellaneous Options. Values:
"   a: ":read" sets window filename
"   A: ":write" sets window filename
"   B: backslash has no special meaning in ":map"
"   c: search continues from the end of the match
"   e: automatically add <CR> to the end of executed registers
"   F: ":write" sets buffer filename
"   s: set buffer options on entering the buffer
"   W: refuse to overwrite a readonly file, even with :w!
"   Z: don't reset 'readonly' when using :w!
set cpoptions=aABceFsWZ
