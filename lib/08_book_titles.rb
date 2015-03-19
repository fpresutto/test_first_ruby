class Book
  # TODO: your code goes here!
  attr_accessor :title

  def title=(title)
    leave_as = %w{a an and of in the}
    words = title.split
    words[0].capitalize!
    i = 1

    while i < words.length
      if !leave_as.include?(words[i])
        words[i].capitalize!
      end
      i += 1
    end

    @title = words.join(' ')
  end
end
