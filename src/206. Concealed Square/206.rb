Math.sqrt(10203040506070809).to_i.upto(Math.sqrt(20203040506070809).to_i) do |num|
  if (num * num).to_s =~ /1\d2\d3\d4\d5\d6\d7\d8\d9/
    puts num * 10
	break
  end
end