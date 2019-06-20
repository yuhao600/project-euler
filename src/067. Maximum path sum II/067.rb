file_content = IO.read('p067_triangle.txt')

triangle = []
file_content.lines do |line|
  triangle << line.split.map(&:to_i)
end

1.upto(triangle.size - 1) do |row|
  triangle[row - 1] << 0
  0.upto(triangle[row].size - 1) do |col|
    triangle[row][col] += [triangle[row - 1][col], triangle[row - 1][col - 1]].max
  end
end

puts triangle.last.max