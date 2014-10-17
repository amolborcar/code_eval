def sum_of_integers
  counter = 0
  File.open(ARGV[0]).each_line do |line|
    counter += line.to_i
  end
  return counter
end

p sum_of_integers