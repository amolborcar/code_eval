def sum_of_primes
  primes = [2]
  i = 3
  while primes.length < 1000 do
    divisors = 0
    (2..i-1).to_a.each do |n|
      if i % n == 0
        divisors += 1
        break
      end
    end
    primes << i if divisors == 0
    i += 1
  end
  return primes.inject(:+)
end

p sum_of_primes