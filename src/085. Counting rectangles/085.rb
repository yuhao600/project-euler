nearest = [0, 0]
nearest_diff = 2_000_000 * 2_000_000
1.upto(2000) do |m|
  m.upto(2000) do |n|
    rectangle_num = m * n * (m + 1) * (n + 1) / 4
    diff = (rectangle_num - 2_000_000).abs
    if diff < nearest_diff
      nearest = [m, n]
      nearest_diff = diff
    end
  end
end

puts nearest[0] * nearest[1]
