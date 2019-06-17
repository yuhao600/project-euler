class Integer
  def to_sorted
    self.to_s.chars.sort.join
  end
end

n = 1
while true
  sorted = n.to_sorted
  if (n * 2).to_sorted == sorted and
     (n * 3).to_sorted == sorted and
     (n * 4).to_sorted == sorted and
     (n * 5).to_sorted == sorted and
     (n * 6).to_sorted == sorted
    puts n
    break
  end
  n += 1
end
