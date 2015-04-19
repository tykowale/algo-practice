def factors(num, all_factors=[])
  2.upto(num) do |factor|
    if num % factor == 0
      all_factors << factor
      num = num / factor
      return factors(num, all_factors)
    end
  end
  all_factors
end

p factors(10)