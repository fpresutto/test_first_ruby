def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  array.reduce(0) {|a, b| a + b }
end

def multiply(*num)
  num.reduce (1) {|a, b| a *= b}
end

def power(x, y)
  x ** y
end

def factorial(num)
  1.upto(num).reduce (1) {|a, b| a *= b}
end
