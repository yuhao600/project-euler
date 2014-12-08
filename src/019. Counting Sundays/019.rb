sunday = Time.utc(1901, "Jan", 6, 12)
first_of_month = 0
while sunday < Time.utc(2000, "Dec", 31, 12)
  sunday += 60 * 60 * 24 * 7
  first_of_month += 1 if sunday.mday == 1
end

puts first_of_month