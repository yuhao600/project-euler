class Integer
  def is_lychrel?
    num = self
    i = 0
    while i < 50
      num = num + num.to_s.reverse.to_i
      if num == num.to_s.reverse.to_i
        return false
      end
      i += 1
    end
    true
  end
end

counter = 0
1.upto(10000) do |num|
  if num.is_lychrel?
    counter += 1
  end
end
puts counter
