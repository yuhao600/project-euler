local encrypted_codes = {}
local cipher_file = io.open("p059_cipher.txt", "r")
for c in cipher_file:read("*a"):gmatch("%d+") do
  table.insert(encrypted_codes, c)
end

-- https://en.wikipedia.org/wiki/Dolch_word_list
local common_english_words = {}
local common_words_file = io.open("common_english_words.txt", "r")
for line in common_words_file:lines() do
  for word in line:gmatch("%w+") do
    table.insert(common_english_words, word)
  end
end

function decrypt(encrypted_codes, key)
  local decrypted_words = {}
  local i = 1
  for _, m in ipairs(encrypted_codes) do
    table.insert(decrypted_words, string.char(m ~ key[i]))
    i = i + 1
    if i > 3 then
      i = 1
    end
  end
  return table.concat(decrypted_words)
end


local max_matches = 0
local max_match_key = 'no_match'
local a_ascii, z_ascii = string.byte("a"), string.byte("z")
for a = a_ascii, z_ascii do
  for b = a_ascii, z_ascii do
    for c = a_ascii, z_ascii do
      local key = {a, b, c}
      local decrypted_words = decrypt(encrypted_codes, key)
      local match_count = 0
      for _, word in ipairs(common_english_words) do
        for m in decrypted_words:gmatch("%W" .. word .. "%W") do
          match_count = match_count + 1
        end
      end
      if match_count > max_matches then
        max_matches = match_count
        max_match_key = key
      end
    end
  end
end
local max_decrypted_words = decrypt(encrypted_codes, max_match_key)
local ascii_sum = 0
for i = 1, #max_decrypted_words do
  ascii_sum = ascii_sum + max_decrypted_words:byte(i)
end
print(ascii_sum)
