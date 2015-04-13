module Enumerable

  def my_group_by(&block)
    result = Hash.new

    self.each_index do |i|
      value = self[i]
      key = yield(self[i])
      result[key] ||= []
      result[key] << value
    end

    return result
  end

end

p [1,2,3,4].my_group_by {|x| p x % 2}