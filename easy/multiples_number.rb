def multiples_number
  File.open(ARGV[0]).each_line do |line|
    line.gsub("\n", "")
    nums = line.split(",")
    max = 0
    while max < nums[0].to_i do
      max += nums[1].to_i
    end
    puts max
  end
end

multiples_number