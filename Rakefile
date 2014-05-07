require 'rake'
require 'erb'

desc "install dot files and setup vimrc"
task :install => [:install_files, :vimrc_setup] do
  puts "Installation complete"
end

desc "install the dot files into user's home directory"
task :install_files do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.rdoc LICENSE].include? file

    if File.exist?(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file.sub('.erb', '')}")
        puts "identical ~/.#{file.sub('.erb', '')}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub('.erb', '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file.sub('.erb', '')}"
        end
      end
    else
      link_file(file)
    end
  end
  `./autojump/install.zsh`
end

desc "vimrc setup"
task :vimrc_setup do
  system %Q{git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim}
  system %Q{vim +PluginInstall +qa!}
  system %Q{git clone https://github.com/Shougo/vimproc.vim.git ~/.vim/bundle/vimproc.vim}
  system %Q{cd ~/.vim/bundle/vimproc.vim && make}
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file.sub('.erb', '')}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end
