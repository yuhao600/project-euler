file_content = IO.read('p081_matrix.txt')

matrix = []
file_content.lines do |line|
    matrix << line.split(',').map(&:to_i)
end

size = matrix.size
1.upto(size * 2 - 1) do |i|
  0.upto(i) do |row|
    col = i - row
    if row >= size || col >= size
      next
    end
    if row == 0 || col == size - 1
      matrix[row][col] += matrix[row][col - 1]
    elsif col == 0 || row == size - 1
      matrix[row][col] += matrix[row - 1][col]
    else
      matrix[row][col] += [matrix[row - 1][col], matrix[row][col - 1]].min
    end
  end
end

puts matrix.last.last