#!/usr/bin/env ruby
# from https://github.com/mislav/dotfiles/blob/master/install.rb

require 'fileutils'

home = ENV['HOME']

Dir.chdir File.dirname(__FILE__) do
  dotfiles_dir = Dir.pwd.sub(home + '/', '')

  Dir['*'].each do |file|
    next if ['bin','install.rb'].include? file
    target = File.join(home, ".#{file}")
    unless File.exist? target
      system %[ln -vsf #{File.join(dotfiles_dir, file)} #{target}]
    end
  end

  FileUtils.cp './zsh/zsh-theme/erikbehrends.zsh-theme', "#{home}/.oh-my-zsh/themes/"
end
