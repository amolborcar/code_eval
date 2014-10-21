def unique
  lines = []
  File.open(ARGV[0]).each_line do |line|
    line.gsub!("\n", "")
    new_line = line.split(",").uniq
    lines << new_line.join(",")
  end
  lines.each { |line| puts line }
end

unique