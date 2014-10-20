def self_describing_numbers
  File.open(ARGV[0]).each_line do |line|
    counts = line.scan(/\d/).inject(Hash.new(0)){|h, c| h[c] += 1; h}
    nums = line.split("").map { |n| n }[0..-2]
    correct = 0
    nums.each_with_index do |num, index|
      correct += 1 if counts[index.to_s] == num.to_i
    end
    if correct == nums.length
      puts 1
    else
      puts 0
    end
  end
end

self_describing_numbers