def prime_numbers
  File.open(ARGV[0]).each_line do |line|
    n = line.to_i
    primes = (0..n).to_a
    primes[0] = primes[1] = nil

    for i in (2..n)
      next unless primes[i]
      (i*i).step(primes.length, i) do |num|
        primes[num] = nil
      end
    end
    primes[-1] = nil if primes[-1] = n
    puts primes.compact.join(",")
  end
end

prime_numbers