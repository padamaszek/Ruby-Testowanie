puts "Podaj tekst: "
text = gets.chomp
puts "Podaj szukane slowo: "
slowo = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != slowo
    print word + " "
  else
    print "ZNALEZIONO "
  end
end