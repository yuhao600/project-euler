$triangles = [0]

def expand_triangles(max)
  while $triangles.last < max
    n = $triangles.size
    $triangles << n * (n + 1) / 2
  end
end

def check_triangle(num)
  if $triangles.last < num
    expand_triangles(num)
  end
  $triangles.include? num
end

def word_value(word)
  word.chars.map {|c| c.ord - 'A'.ord + 1}.inject(:+)
end

count = 0
words = IO.read('p042_words.txt').split(',')
words.map do |word|
  word = word.delete('"')
  value = word_value(word)
  if (check_triangle(value))
    count += 1
  end
end
puts count
