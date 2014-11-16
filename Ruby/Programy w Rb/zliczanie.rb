puts "Input String :"
text = gets.chomp
words = text.split(" ")
frequencies = Hash.new(0)
words.each do |x|
    frequencies[x] += 1
end
frequencies = frequencies.sort_by do |letter,number|
    number
end
frequencies.reverse!

frequencies.each do |letter,num|
    puts letter + " " + num.to_s
end