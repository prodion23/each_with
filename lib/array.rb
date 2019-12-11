class Array
  def each_indicate_nth nth = self.length, &block
    each_with_index do |element, index|
      yield element, index == nth
    end
    self
  end

  def each_indicate_first &block
    each_indicate_nth(0) do |element, is_first|
      yield element, is_first
    end
    self
  end

  def each_indicate_last &block
    each_indicate_nth(self.length-1) do |element, is_last|
      yield element, is_last
    end
    self
  end
end
