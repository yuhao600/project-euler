require 'set'

m = 100

def tri_key(x, y)
  x, y = y, x if x > y
  x << 8 | y
end

$gcd = {}
1.upto(m) do |x|
  x.upto(m) do |y|
    $gcd[tri_key(x, y)] = x.gcd(y)
  end
end

def gcd(x, y)
  $gcd[tri_key(x, y)]
end

$tri_cache = {}
# https://en.wikipedia.org/wiki/Pick%27s_theorem
def tri(x, y)
  k = tri_key(x, y)
  v = $tri_cache[k]
  return v if v != nil
  points = ((x - 1) * (y - 1) - gcd(x, y) + 1) / 2
  $tri_cache[k] = points
  points
end

def quad_key(a, b, c, d)
  key_arr = tri_key(a, b), tri_key(b, c), tri_key(c, d), tri_key(d, a)
  key_arr.sort!
  key_arr.join('_').to_sym
end

def lattice_count(a, b, c, d) 
  tri(a, b) + tri(b, c) + tri(c, d) + tri(d, a) + a + b + c + d - 3
end

$squares = Set.new
1.upto(m * 2) do |p|
  $squares << p * p
end

count = 0
1.upto(m) do |a|
  1.upto(m) do |b|
    a.upto(m) do |c|
      b.upto(m) do |d|
        if $squares.include? lattice_count(a, b, c, d)
          count += 1
          count += 1 unless a == c
          count += 1 unless b == d
          count += 1 unless a == c or b == d
        end
      end
    end
  end
end

puts count
