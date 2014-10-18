def counting_primes
  File.open(ARGV[0]).each_line do |line|
    params = line.split(",")
    nums = (params[0].to_i..params[1].to_i).to_a
    primes = []

    nums.each do |n|
      flag = 0
      for i in (2..n-1)
        if n % i == 0
          flag = 1
          break
        end
      end
      primes << n if flag == 0
    end

    puts primes.length
  end
end

counting_primes