class RPNCalculator
  def initialize
    @block = []
  end

  def push(num)
    @block.push(num)
  end

  def pop
    raise "calculator is empty" if @block.empty?
    @block.pop
  end

  def plus
    x = pop
    y = pop
    @block.push(x + y)
  end

  def minus
    y = pop
    x = pop
    @block.push(x - y)
  end

  def times
    x = pop
    y = pop
    @block.push(x * y)
  end

  def divide
    div = pop
    num = pop
    @block.push(num.to_f / div.to_f)
  end

  def value
    @block.last
  end

  def tokens(string)
    result = string.split
    result.collect! do |item|
      if item == "+" || item == "-" || item == "*" || item == "/"
        item.to_sym
      else
        item.to_i
      end
    end

    return result
  end

  def evaluate(string)
    array = tokens(string)

    array.each do |item|
      case item
        when :+
        plus
        when :-
        minus
        when :*
        times
        when :/
        divide
        else
        push(item)
      end
    end

    return value
  end
end
