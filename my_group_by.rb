module Enumerable

  def my_each(&block)
    self.length.times do |i|
      yield(self[i])
    end
  end

  def my_each_index(&block)
    self.length.times do |i|
      yield(i)
    end
  end


  def my_group_by(&block)
    result = Hash.new

    self.my_each_index do |i|
      value = self[i]
      key = yield(self[i])
      result[key] ||= []
      result[key] << value
    end

    return result
  end

end

p [1,2,3,4].my_group_by {|x| x.odd?}