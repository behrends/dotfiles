#!/usr/bin/env ruby
# from https://github.com/mislav/dotfiles/blob/master/install.rb

home = ENV['HOME']

Dir.chdir File.dirname(__FILE__) do
  dotfiles_dir = Dir.pwd.sub(home + '/', '')

  Dir['*'].each do |file|
    next if !File.extname(file).empty? || file == 'manual'
    target = File.join(home, ".#{file}")
    unless File.exist? target
      system %[ln -vsf #{File.join(dotfiles_dir, file)} #{target}]
    end
  end
end
