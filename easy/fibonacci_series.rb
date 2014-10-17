def fibonacci_series
  File.open(ARGV[0]).each_line do |line|
    puts fib_evaluation(line)
  end
end

def fib_evaluation(num)
  fib = [0,1]
  while fib.length <= num.to_i do
    fib << fib[-2] + fib[-1]
  end
  return fib[-1]
end

fibonacci_series