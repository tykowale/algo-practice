def prime_factors(num, all_factors=[])
  2.upto(num) do |factor|
    if num % factor == 0
      all_factors << factor
      num = num / factor
      return prime_factors(num, all_factors)
    end
  end
  all_factors
end

p prime_factors(600851475143)