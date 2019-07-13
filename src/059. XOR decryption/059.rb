encrypted_codes = []
File.read('p059_cipher.txt').split(',').each do |c|
  encrypted_codes << c.to_i
end

# https://en.wikipedia.org/wiki/Dolch_word_list
common_english_words = []
File.read('common_english_words.txt').lines do |line|
  line.split(',').each do |word|
    word = word.strip
    common_english_words << word unless word.empty?
  end
end

def decrypt(encrypted_codes, key)
  decrypted_words = ''
  encrypted_codes.each_slice(3) do |m|
    decrypted_words << (m[0] ^ key[0].ord)
    decrypted_words << (m[1] ^ key[1].ord)
    decrypted_words << (m[2] ^ key[2].ord)
  end
  decrypted_words
end

max_matches = 0
max_match_key = 'no_match'
'aaa'.upto('zzz') do |key|
  decrypted_words = decrypt(encrypted_codes, key)
  match_count = 0
  common_english_words.each do |word|
    r = Regexp.new('\W' + word + '\W')
    m = decrypted_words.match r
    if m != nil
      match_count += m.size 
    end
  end
  if match_count > max_matches
    max_matches = match_count
    max_match_key = key
  end
end
puts decrypt(encrypted_codes, max_match_key).chars.map(&:ord).inject(:+)
