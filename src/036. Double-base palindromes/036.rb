class Integer
  def palindrome_dec?
    decimal = self.to_s
    decimal == decimal.reverse
  end
  def palindrome_bin?
    binary = self.to_s(2)
    binary == binary.reverse
  end
end

puts (1 .. 1_000_000).to_a.keep_if(&:palindrome_dec?).keep_if(&:palindrome_bin?).inject(:+)
