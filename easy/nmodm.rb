def modulus
  File.open(ARGV[0]).each_line do |line|
    line.gsub!("\n", "")
    nums = line.split(",").map { |n| n.to_i }
    puts nums[0] - ((nums[0] / nums[1])* nums[1])
  end
end

modulus