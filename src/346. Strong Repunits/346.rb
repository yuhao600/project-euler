require 'set'

upper_limit = 10 ** 12

# calculates rep units with digits more than 3
# any number n > 2 is a rep units 11 in base n - 1
rep_units = Set.new
2.upto(Math.sqrt(upper_limit)) do |b|
  r = b + 1
  loop do
    r = r * b + 1
    break if r > upper_limit
    rep_units << r
  end
end
# https://en.wikipedia.org/wiki/Goormaghtigh_conjecture#Application_to_repunits
# 31 (111 in base 5, 11111 in base 2) and 8191 (111 in base 90, 1111111111111 in base 2)
# are the only two numbers that are repunits with at least 3 digits in two different bases.
rep_units << 1 if upper_limit >= 1
rep_units << 31 if upper_limit >= 31
rep_units << 8191 if upper_limit >= 8191
puts rep_units.inject(:+)