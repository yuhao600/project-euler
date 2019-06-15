require 'date'

first_of_month = Date.new(1901, 1, 1)
count = 0
while first_of_month < Date.new(2000, 12, 31)
  count += 1 if first_of_month.sunday?
  first_of_month = first_of_month.next_month
end

puts count