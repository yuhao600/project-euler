candidates = []
1.upto(2000) do |m|
  m.upto(2000) do |n|
    rectangle_num = m * n * (m + 1) * (n + 1) / 4
    break if rectangle_num > 2 * 1_000_000
    candidates << [rectangle_num, m, n]
  end
end

result = candidates.min_by { |r| (r[0] - 4 * 1_000_000).abs }
puts result[1] * result[2]
