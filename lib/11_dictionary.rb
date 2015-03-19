class Dictionary
  def initialize
    @d = {}
  end

  def entries
    @d
  end

  def add(d)
    if d.class == String
      @d[d] = nil
    else
      d.each { |key, value| @d[key] = value }
    end
  end

  def keywords
    @d.keys.sort
  end

  def include?(key)
    @d.has_key?(key)
  end

  def find(k)
    @d.select { |key, value| key =~ /^#{k}/ }
  end

  def printable
    result = []
    @d.keys.sort.each { |key| result << "[#{key}] \"#{@d[key]}\""}
    result.join("\n")
  end
end
