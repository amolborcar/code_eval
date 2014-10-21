def mth_to_last
  File.open(ARGV[0]).each_line do |line|
    line.gsub!("\n", "")
    chars = line.split(" ")
    m = chars.pop.to_i
    puts chars[chars.length-m]
  end
end

mth_to_last