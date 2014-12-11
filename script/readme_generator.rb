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

problems = []
Dir.foreach('../src') do |d|
  if /(?<index>\d{3})\.\s*(?<title>\S.+)/ =~ d
    p = Problem.new(index.to_i, title, d)
	Dir.foreach("../src/#{d}") do |src|
	  if /\d{3}\.(?<lang>.+)/ =~ src
	    case lang
		  when 'c'   then p.languages << :c
		  when 'rb'  then p.languages << :ruby
		  when 'lua' then p.languages << :lua
		end
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
	    when :c    then link += "[C](/src/#{p.directory}/#{sprintf('%03d', p.index)}.c)\t"
	    when :cpp  then link += "[C++](/src/#{p.directory}/#{sprintf('%03d', p.index)}.cpp)\t"
	    when :ruby then link += "[Ruby](/src/#{p.directory}/#{sprintf('%03d', p.index)}.rb)\t"
	    when :lua  then link += "[Lua](/src/#{p.directory}/#{sprintf('%03d', p.index)}.lua)\t"
	  end
    end
  readme.puts "|#{p.index}|[#{p.title}](https://projecteuler.net/problem=#{p.index})|#{link}|"
  end
end
