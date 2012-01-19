""""""""""""""""""""""
"" F I L E T Y P E
""""""""""""""""""""""
" use filetype plugins to determine indent settings
filetype plugin indent on

" Gemfile, Isolate, Vagrantfile and config.ru are ruby
autocmd BufNewFile,BufRead Gemfile     setfiletype ruby
autocmd BufNewFile,BufRead Isolate     setfiletype ruby
autocmd BufNewFile,BufRead Vagrantfile setfiletype ruby
autocmd BufNewFile,BufRead config.ru   setfiletype ruby

" set up compiler for ruby files
autocmd FileType ruby compiler ruby

" don't show whitespace in help files
autocmd FileType help set nolist

" twiki files
autocmd BufNewFile,BufRead *.twiki set filetype=twiki

" set filetype on config files for vim, mutt, and bash
autocmd BufNewFile,BufRead ~/.vim/*  setfiletype vim
autocmd BufNewFile,BufRead ~/.mutt/* setfiletype muttrc
autocmd BufNewFile,BufRead ~/.bash/* setfiletype sh
