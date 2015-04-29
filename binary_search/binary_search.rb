class Array

  def my_binary_search(num)
    top = self.length - 1
    bottom = 0

    while bottom <= top
      target = (top + bottom) / 2
      bottom += 1 if self[target] < num
      top += 1 if self[target] > num
      return target if self[target] == num
    end 

    return -1
  end

end

p [1,2,4,8,10,15,23,45,102,197,487,1002].my_binary_search(1002)

