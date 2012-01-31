########################################################################
###
### Vim Rakefile, copied from: 
### http://github.com/bleything/dotvim
###
########################################################################

require 'pathname'

task :default do
  puts "Hi! All this Rakefile can do right now is update the bundles:"
  puts # blank line
  puts "  $ rake update:bundles"
end

desc 'Update everything!'
task :update => [ 'update:bundles' ]

namespace :update do

  BUNDLES = {
    # plugins
    :ack           => "http://www.vim.org/scripts/download_script.php?src_id=10433",
    :bufexplorer   => "http://www.vim.org/scripts/download_script.php?src_id=12904",
    :command_t     => "git://github.com/wincent/Command-T.git", # need to manually: rvm use system && rake make
    :css_color     => "git://github.com/ap/vim-css-color.git",
    :fugitive      => "git://github.com/tpope/vim-fugitive.git",
    :nerdcommenter => "git://github.com/scrooloose/nerdcommenter.git",
    :nerdtree      => "git://github.com/scrooloose/nerdtree.git",
    :pathogen      => "git://github.com/tpope/vim-pathogen.git",
    :processing    => "git://github.com/sophacles/vim-processing.git",
    :rails         => "git://github.com/tpope/vim-rails.git",
    :rooter        => "git://github.com/airblade/vim-rooter.git",
    :surround      => "git://github.com/tpope/vim-surround.git",
    :tabular       => "git://github.com/godlygeek/tabular",
    :taglist       => "http://www.vim.org/scripts/download_script.php?src_id=7701",
    :taskpaper     => "git://github.com/davidoc/taskpaper.vim.git",

    # syntax definitions
    :syntax_git       => "git://github.com/tpope/vim-git.git",
    :syntax_haml_sass => "git://github.com/tpope/vim-haml.git",
    :syntax_markdown  => "git://github.com/ujihisa/vim-markdown.git",
    :syntax_rdoc      => "git://github.com/depuracao/vim-rdoc.git",
    :syntax_scala     => "git://github.com/derekwyatt/vim-scala.git",
    :syntax_slidedown => "git://github.com/bleything/vim-slidedown.git",
    :syntax_textile   => "git://github.com/timcharper/textile.vim.git",
    :syntax_vcl       => "git://github.com/smerrill/vcl-vim-plugin.git",

    # color schemes
    :colors_solarized => "git://github.com/altercation/vim-colors-solarized.git"
  }

  desc "update any bundles defined in the Rakefile"
  task :bundles do

    bundle_home = Pathname.new( ENV['HOME'] ) + '.vim' + 'bundle'
    mkdir_p bundle_home

    BUNDLES.sort_by {|k,v| k.to_s }.each do |bundle, location|
      target_path = bundle_home + bundle.to_s

      puts "*" * 72
      puts "*** Instaling #{bundle} to #{target_path} from #{location}"
      puts # blank line

      rm_rf target_path

      case location.match( /^(.*?):/ )[1]
      when 'git'
        sh "git clone #{location} #{target_path} > /dev/null"
        rm_rf target_path + '.git'
      when 'http', 'https'
        mkdir_p target_path
        sh "cd #{target_path} && curl -s '#{location}' | tar zx -"
      end

      docdir = target_path + 'doc'
      if docdir.exist?
        puts "doc dir exists; tagging"
        sh "vim -u NONE -esX -c 'helptags #{docdir}' -c quit"
      end

      puts # blank line
    end
  end # task :bundles

end # namespace :update

