class Array
  def sum
    self.reduce(0) {|a, b| a + b}
  end

  def square
    self.map { |num| num * num }
  end

  def square!
    self.map! { |num| num * num }
  end
end
