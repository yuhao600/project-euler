def score(name)
  name.chars.map { |c| c.ord - 'A'.ord + 1 }.inject(:+)
end

File.open('p022_names.txt') do |file|
  all_names = file.read
  names = all_names.scan(/[^,"]+/)
  names.sort!
  total_score = 0
  names.each_with_index do |name, index|
    total_score += score(name) * (index + 1)
  end
  puts total_score
end
