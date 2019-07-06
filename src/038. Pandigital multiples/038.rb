require 'set'

def form_pandigital(num)
  pandigital_str = ''
  digits = Set.new
  n = 1
  while digits.size < 9
    m = num * n
    while m > 0
      m, d = m.divmod(10)
      return nil if d == 0
      if digits.include? d
        return nil
      else
        digits.add(d)
      end
    end
  pandigital_str += (num * n).to_s
  n += 1
  end
  return pandigital_str.to_i
end

max_pandigital = 0
1.upto(9999) do |n|
  candidate = form_pandigital(n)
  if candidate != nil and candidate > max_pandigital
    max_pandigital = candidate
  end
end

puts max_pandigital
