def reverse_words
  File.open(ARGV[0]).each_line do |line|
    line.gsub!("\n", "")
    puts line.split(" ").reverse.join(" ")
  end
end

reverse_words