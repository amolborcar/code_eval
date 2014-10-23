def number_pairs
  File.open(ARGV[0]).each_line do |line|
    line.gsub!("\n", "")
    sum_num = line.split(";")
    numbers = sum_num.shift.split(",").map { |n| n.to_i }
    sum_num = sum_num[-1].to_i
    pairs = []
    numbers.each do |n|
      next if n >= sum_num
      if numbers.include? (sum_num - n)
        pairs << [n, sum_num-n]
        numbers.delete(n)
        numbers.delete(sum_num-n)
      end
    end
    answer = ""
    pairs.each_with_index do |pair, index|
      if index == pairs.length-1
        answer << pair[0].to_s + "," + pair[1].to_s
      else
        answer << (pair[0].to_s + "," + pair[1].to_s + ";")
      end
    end
    answer << "NULL" if pairs.empty?
    puts answer
  end
end

number_pairs