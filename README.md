## My ~/.vim

```bash
cd ~
git clone git://github.com/thekindofme/dotvim.git .vim
ln -s ~/.vim/vimrc .vimrc
```

Installing Plugins

```bash
cd ~/.vim
rake update
```

Installing navtive extention for command-T (with RVM)

```bash
cd ~/.vim/bundle/command_t
rvm system
rake make
rvm default
```