def minimalize(original)
  minimal = String.new(original)
  minimal.gsub!(/VI{4}/, 'IX')
  minimal.gsub!(/I{4}/, 'IV')
  minimal.gsub!(/LX{4}/, 'XL')
  minimal.gsub!(/X{4}/, 'XC')
  minimal.gsub!(/DC{4}/, 'CM')
  minimal.gsub!(/C{4}/, 'CD')
  minimal
end

roman_file = File.read('p089_roman.txt')
diff = 0
roman_file.lines do |r|
  roman = r.chomp
  diff += roman.size - minimalize(roman).size
end
puts diff
