str = IO.read('013.txt')
puts str.lines.map(&:to_i).inject(:+).to_s[0 .. 9]
