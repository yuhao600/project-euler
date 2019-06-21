class Integer
  def sum_digits
    self.to_s.chars.map(&:to_i).inject(:+)
  end
end

# guess
upper_limit_power = 15
upper_limit = 10 ** upper_limit_power
digit_sum_powers = []
2.upto(9 * upper_limit_power) do |n|
  n_power = n
  while n_power < upper_limit
    if n_power >= 10 and n_power.sum_digits == n
      digit_sum_powers << n_power
    end
    n_power *= n
  end
end

# if less than 30, take a bigger guess of upper_limit_power
if digit_sum_powers.size >= 30
  digit_sum_powers.sort!
  puts digit_sum_powers[29]
end
  