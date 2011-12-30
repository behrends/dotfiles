task default: [:submodules, :ruby, :vim, :zsh,]
#task default: [:tmp_dirs, :update, :command_t, :link]

task :submodules do
  sh 'git submodule update --init'
end

task :ruby do
  %w[irbrc].each do |file|
    create_link 'ruby', file
  end
end

task :vim do
  %w[gvimrc vimrc].each do |file|
    create_link 'vim', file
  end

  # link main vim dir
  vim_dir = File.join(Dir.home, '.vim') 
  ln_s File.join(Dir.pwd, 'vim/src'), vim_dir unless File.symlink? vim_dir
end

task :zsh do
  %w[zshenv zshrc].each do |file|
    create_link 'zsh', file
  end

  cp 'zsh/zsh-theme/erikbehrends.zsh-theme', File.join(Dir.home,'.oh-my-zsh/themes/')
end

def create_link source_dir, source_file
  target = File.join(Dir.home, ".#{source_file}")
  ln_s File.join(Dir.pwd, source_dir, source_file), target unless File.symlink? target
end

