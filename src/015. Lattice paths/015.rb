path = Hash.new(0)
0.upto(20) do |m|
  m.upto(20) do |n|
    path[(m.to_s + ':' + n.to_s).to_sym] = case m
                                             when 0 then 1
                                             when n then path[((m - 1).to_s + ':' + n.to_s).to_sym] * 2
                                             else        path[((m - 1).to_s + ':' + n.to_s).to_sym] + path[(m.to_s + ':' + (n - 1).to_s).to_sym]
                                           end
  end
end

puts path[:"20:20"]