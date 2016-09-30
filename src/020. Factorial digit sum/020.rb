puts (1 .. 100).inject(:*).to_s.chars.map(&:to_i).inject(:+)
