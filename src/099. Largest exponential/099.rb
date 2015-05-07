max = 0
max_line_no = 0

File.open("p099_base_exp.txt") do |file|
  line_no = 1
  while line = file.gets
    md = line.match(/^(\d+),(\d+)$/)
	base, exp = md[1].to_i, md[2].to_i
	current = exp * Math.log(base)
	if current > max
	  max = current
	  max_line_no = line_no
	end
	line_no += 1
  end
end

puts max_line_no