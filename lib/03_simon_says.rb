def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, n = 2)
  words = []
  n.times do
    words << word
  end
  words.join(' ')
end

def start_of_word(word, n)
  word[0, n]
end

def first_word(sentence)
  sentence.split(' ')[0]
end

def titleize(sentence)
  small = ["and", "over", "the"]
  words = sentence.split(' ')
  words[0].capitalize!
  i = 1
  while i < words.size
    if !small.include?(words[i])
      words[i].capitalize!
    end
    i += 1
  end
  words.join(" ")
end
