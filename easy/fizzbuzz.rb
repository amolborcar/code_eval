def fizzbuzz
  File.open(ARGV[0]).each_line do |line|
    fb_arr = []
    nums = line.split(" ")
    for i in (1..nums[2].to_i)
      if (i % nums[0].to_i == 0 && i % nums[1].to_i == 0)
        fb_arr << "FB"
        fb_arr << " "
      elsif i % nums[0].to_i == 0
        fb_arr << "F"
        fb_arr << " "
      elsif i % nums[1].to_i == 0
        fb_arr << "B"
        fb_arr << " "
      else
        fb_arr << i
        fb_arr << " "
      end
    end
  puts fb_arr.join("").rstrip
  end
end

fizzbuzz