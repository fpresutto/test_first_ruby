class XmlDocument
  def initialize(indent = false)
    @indent = indent
    @indent_level = 0
  end

  def method_missing(m, *arguments, &block)
    attributes = {}

    if arguments.length != 0
      attributes = arguments[0]
    end

    result = ""
    result << "  " * @indent_level if @indent
    result << "<#{m}"

    attributes.each do |key, value|
      result << " #{key}='#{value}'"
    end

    if block != nil
      result << ">"
      result << "\n" if @indent
      @indent_level += 1
      result << yield
      @indent_level -= 1

      result << "  " * @indent_level if @indent
      result << "</#{m}>"
      result << "\n" if @indent
    else
      result << "/>"
      result << "\n" if @indent
    end

    return result
  end

end
