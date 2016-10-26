class Fixnum
  def bouncy?
    if self.to_s.scan(/\d/).sort.join.to_i == self or self.to_s.scan(/\d/).sort.reverse.join.to_i == self
      false
    else
      true
    end
  end
end

count = 0.0
n = 1
while true
  count += 1 if n.bouncy?
  if count / n == 0.99
    puts n
    break
  end
  n += 1
end
