#!/usr/bin/env ruby

class Problem
  include Comparable
  attr_reader :index, :title, :languages, :directory

  def initialize(index, title, directory)
    @index = index
    @title = title
    @languages = []
    @directory = directory
  end

  def <=>(other)
    self.index <=> other.index
  end
end

lang_extensions = {
  'c'    => :c,
  'cpp'  => :cpp,
  'go'   => :go,
  'hs'   => :haskell,
  'java' => :java,
  'lua'  => :lua,
  'py'   => :python,
  'rb'   => :ruby,
}

problems = []
Dir.foreach('../src') do |d|
  if /(?<index>\d{3})\.\s*(?<title>\S.+)/ =~ d
    p = Problem.new(index.to_i, title, d)
    Dir.foreach("../src/#{d}") do |src|
      if /\d{3}\.(?<extension>.+)/ =~ src
        lang = lang_extensions[extension]
        p.languages << lang if lang != nil
      end
    end
    p.languages.sort!
    problems << p
  end
end

problems.sort!
File.open('../Readme.md', 'w') do |readme|
  readme.puts 'My Project Euler Solutions'
  readme.puts '========'
  readme.puts

  readme.puts '|Index|Title|Solution|'
  readme.puts '| ----- | -------- | -------- |'
  problems.each do |p|
    next if p.languages.empty?
    link = ''
    p.languages.each do |lang|
      directory = p.directory.gsub(' ', '%20')
      case lang
        when :c       then link += "[C](/src/#{directory}/#{sprintf('%03d', p.index)}.c) "
        when :cpp     then link += "[C++](/src/#{directory}/#{sprintf('%03d', p.index)}.cpp) "
        when :go      then link += "[Go](/src/#{directory}/#{sprintf('%03d', p.index)}.go) "
        when :haskell then link += "[Haskell](/src/#{directory}/#{sprintf('%03d', p.index)}.hs) "
        when :java    then link += "[Java](/src/#{directory}/#{sprintf('%03d', p.index)}.java) "
        when :lua     then link += "[Lua](/src/#{directory}/#{sprintf('%03d', p.index)}.lua) "
        when :python  then link += "[Python](/src/#{directory}/#{sprintf('%03d', p.index)}.py) "
        when :ruby    then link += "[Ruby](/src/#{directory}/#{sprintf('%03d', p.index)}.rb) "
      end
    end
    readme.puts "|#{p.index}|[#{p.title}](https://projecteuler.net/problem=#{p.index})|#{link}|"
  end

  readme.puts
  readme.puts '![My Project Euler](https://projecteuler.net/profile/yuhao.png)'
end
