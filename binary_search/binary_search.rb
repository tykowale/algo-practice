class Array

  def my_binary_search(num)
    top = self.length - 1
    bottom = 0

    while bottom <= top
      middle = (top + bottom) / 2
      bottom = middle + 1 if self[middle] < num
      top = middle - 1 if self[middle] > num
      return middle if self[middle] == num
    end

    -1
  end

end