require 'set'

def make_key(m, n)
  m << 16 | n
end

$cached_lattice_count = {}
def lattice_count(m, n)
  k = make_key(m, n)
  v = $cached_lattice_count[k]
  return v if v != nil
  c = ((m - 1) * (n - 1) - m.gcd(n) + 1) / 2
  $cached_lattice_count[k] = c
  c
end

upper_limit = 100

$squares = Set.new
1.upto(upper_limit * 1.5) do |p|
  $squares << p * p
end

def if_square(a, b, c, d)
  total = lattice_count(a, b) + lattice_count(b, c) + lattice_count(c, d) + lattice_count(d, a) + (a - 1) + (b - 1) + (c - 1) + (d - 1) + 1
  $squares.include? total
end

# brute force
square_lattice_count = 0
1.upto(upper_limit) do |a|
  1.upto(upper_limit) do |b|
    1.upto(upper_limit) do |c|
      1.upto(upper_limit) do |d|
        square_lattice_count += 1 if if_square(a, b, c, d)
      end
    end
  end
end

puts square_lattice_count
