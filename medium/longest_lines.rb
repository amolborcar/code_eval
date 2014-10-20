def longest_lines
  line_stats = {}
  line_num = 0
  line_text = []
  num = 0
  File.open(ARGV[0]).each_line do |line|
    line.gsub!("\n", "")
    if line.to_i.to_s == line
      num = line.to_i
    else
      line_text << line
      line_stats[line_num.to_s] = line.split("").length
    end
    line_num += 1
  end
  highest_indices = line_stats.values.sort.reverse[0..num-1]
  longest_lines = []
  highest_indices.each do |length|
    longest_lines << line_stats.select { |key, value| value == length }.keys
  end
  longest_lines.flatten!.each { |index| puts line_text[index.to_i-1]}
end

longest_lines
