def reverser
  words = yield.split(' ')
  words.collect! { |word| word.reverse! }
  words.join(' ')
end

def adder(num=1)
  yield + num
end

def repeater(num=1)
  num.times { yield }
end
