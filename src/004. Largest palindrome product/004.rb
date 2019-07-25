class Integer
  def is_palindrome?
    return self == self.to_s.reverse.to_i
  end
end

max_n = 0
999.downto(100) do |a|
  999.downto(100) do |b|
    n = a * b
    if n > max_n and n.is_palindrome?
      max_n = n
    end
  end
end

puts max_n
