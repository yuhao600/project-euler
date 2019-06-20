candidates = []
1.upto(2000) do |m|
  m.upto(2000) do |n|
    rectangle_num = m * n * (m + 1) * (n + 1) / 4
    candidates << [rectangle_num, m, n]
    break if rectangle_num > 2_000_000
  end
end

result = candidates.min_by { |r| (r[0] - 2_000_000).abs }
puts result[1] * result[2]
