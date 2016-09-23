n = []
n[0] = 'zero'
n[1] = 'one'
n[2] = 'two'
n[3] = 'three'
n[4] = 'four'
n[5] = 'five'
n[6] = 'six'
n[7] = 'seven'
n[8] = 'eight'
n[9] = 'nine'
n[10] = 'ten'
n[11] = 'eleven'
n[12] = 'twelve'
n[13] = 'thirteen'
n[14] = 'fourteen'
n[15] = 'fifteen'
n[16] = 'sixteen'
n[17] = 'seventeen'
n[18] = 'eighteen'
n[19] = 'nineteen'

n[20] = 'twenty'
n[30] = 'thirty'
n[40] = 'forty'
n[50] = 'fifty'
n[60] = 'sixty'
n[70] = 'seventy'
n[80] = 'eighty'
n[90] = 'ninety'

# generate 21-99
2.upto(9) do |b|
  1.upto(9) do |a|
    n[b * 10 + a] = n[b * 10] + n[a]
  end
end

1.upto(9) do |c|
  n[c * 100] = n[c] + 'hundred'
  1.upto(99) do |ba|
    n[c * 100 + ba] = n[c * 100] + 'and' + n[ba]
  end
end

n[1000] = n[1] + 'thousand'

n.shift # remove zero
puts n.map(&:length).inject(:+)
