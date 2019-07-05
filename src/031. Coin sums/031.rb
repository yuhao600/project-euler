# brute force
count = 0
0.upto(1) do |p200|
  0.upto(2) do |p100|
    0.upto(4) do |p50|
      0.upto(10) do |p20|
        0.upto(20) do |p10|
          0.upto(40) do |p5|
            0.upto(100) do |p2|
              p1 = 200 - p200 * 200 - p100 * 100 - p50 * 50 - p20 * 20 - p10 * 10 - p5 * 5 - p2 * 2
              break if p1 < 0
              count += 1
            end
          end
        end
      end
    end
  end
end

puts count
