def sum_of_digits
  File.open(ARGV[0]).each_line do |line|
    line.gsub!("\n", "")
    puts line.split("").map { |n| n.to_i }.inject(:+)
  end
end

sum_of_digits