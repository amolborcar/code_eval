def prime_palindrome
  # generate all primes up to 1000
  primes = (0..1000).to_a
  primes[0] = primes[1] = nil

  for i in (2..1000)
    next unless primes[i]
    (i*i).step(primes.length, i) do |n|
      primes[n] = nil
    end
  end

  # test each prime to see if it's a palindrome
  largest = 0
  primes.compact!.each do |num|
    if num.to_s == num.to_s.reverse
      largest = num
    end
  end

  return largest

end

p prime_palindrome