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

source_extensions = {
  'c'    => :c,
  'cpp'  => :cpp,
  'java' => :java,
  'lua'  => :lua,
  'py'   => :python,
  'rb'   => :ruby,
  'hs'   => :haskell,
}

problems = []
Dir.foreach('../src') do |d|
  if /(?<index>\d{3})\.\s*(?<title>\S.+)/ =~ d
    p = Problem.new(index.to_i, title, d)
    Dir.foreach("../src/#{d}") do |src|
      if /\d{3}\.(?<lang>.+)/ =~ src
        p.languages << source_extensions[lang]
      end
    end
    problems << p
  end
end

problems.sort!
File.open('../Readme.md', 'w') do |readme|
  readme.puts 'My Project Euler Solutions'
  readme.puts '========'

  readme.puts '|Index|Title|Solution|'
  readme.puts '| ----- | -------- | -------- | ---------- |'
  problems.each do |p|
    link = ''
    p.languages.each do |lang|
      case lang
        when :c      then link += "[C](/src/#{p.directory}/#{sprintf('%03d', p.index)}.c) "
        when :cpp    then link += "[C++](/src/#{p.directory}/#{sprintf('%03d', p.index)}.cpp) "
        when :java   then link += "[Java](/src/#{p.directory}/#{sprintf('%03d', p.index)}.java) "
        when :lua    then link += "[Lua](/src/#{p.directory}/#{sprintf('%03d', p.index)}.lua) "
        when :python then link += "[Python](/src/#{p.directory}/#{sprintf('%03d', p.index)}.py) "
        when :ruby   then link += "[Ruby](/src/#{p.directory}/#{sprintf('%03d', p.index)}.rb) "
      end
    end
  readme.puts "|#{p.index}|[#{p.title}](https://projecteuler.net/problem=#{p.index})|#{link}|"
  end

  readme.puts '![My Project Euler](https://projecteuler.net/profile/yuhao.png)'
end
