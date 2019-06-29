class Roman

  attr_reader :original, :minimal

  def initialize(original)
    @original = original
    minimalize(original)
  end

private
  def minimalize(original)
    @minimal = String.new(original)
    @minimal.gsub!(/VI{4}/, 'IX')
    @minimal.gsub!(/I{4}/, 'IV')
    @minimal.gsub!(/LX{4}/, 'XL')
    @minimal.gsub!(/X{4}/, 'XC')
    @minimal.gsub!(/DC{4}/, 'CM')
    @minimal.gsub!(/C{4}/, 'CD')
  end

end

roman_file = File.read('p089_roman.txt')
diff = 0
roman_file.lines do |r|
  roman = Roman.new(r.chomp)
  diff += roman.original.size - roman.minimal.size
end
puts diff
