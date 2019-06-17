require 'prime'

class Integer
  # Euler's totient function
  # see https://en.wikipedia.org/wiki/Euler%27s_totient_function
  def phi()
    prime_factors = self.prime_division.map {|row| row[0]}
    phi_value = self
    prime_factors.each do |p|
        phi_value = phi_value * (p - 1) / p
    end
    phi_value
  end
end

puts (2..1_000_000).map(&:phi).inject(:+)
