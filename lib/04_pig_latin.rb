def translate(string)
  words = string.split(' ')
  words.collect! { |word| translate_word(word) }
  words.join(' ')
end

def translate_word(string)
  vowels = %w{a e i o u}
  i = 0

  until vowels.include?(string[i])
    i += 1
  end

  if i == 0
    result = string
  elsif string[i-1] == 'q' && string[i] == 'u'
    result = string[i+1...string.length] + string[0..i]
  else
    result = string[i...string.length] + string[0...i]
  end

  return result + "ay"
end
