class Array
  def my_map(&block)
    result = []
    for i in 0...self.count
      result.push(block.call(self[i]))
    end
    result
  end
end
