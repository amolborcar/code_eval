def remove_characters
  File.open(ARGV[0]).each_line do |line|
    params = line.split(",")
    string_chars = params[0].strip.split("")
    remove_chars = params[1].strip.split("")
    remove_chars.each do |c|
      string_chars.delete(c)
    end
    puts string_chars.join("")
  end
end

remove_characters