#Moj tutorial:

#Operacje na Stringach:
```ruby
str = „Krystian”
str.lowercase                               # krystian
str.upcase                                  # KRYSTIAN
str.capitalize                              # Krystian #zamienia pierwsza literke na duza
!                                           # zamienia stringa na stale
str.gsub(/s/,”th”)                          # zamienia literke „s” na „th”
.split(„ ”)                                 # dzieli text gdy pojawi się spacja np. text = Ala ma kota na [„Ala”, ”ma”, ”kota”]
```


#Metody:
* respond_to
```ruby
age = 26
age.respond_to?(:next) # zwroci true jak odpowie na metode .next
```
* push
```ruby
alphabet = ["a", "b", "c"]
alphabet.push("d") # Update me!

caption = "A giraffe surrounded by "
caption += "weezards!"
```
#Funkcje:

```ruby
def double(n)
  return n * 2
end

double(2)
```

* przekazywanie argumentow nie okreslonej liczby
```ruby
def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("What up", "Justin", "Ben", "Kevin Sorbo")
```



#Warunki 
* if/elsif/else:
```ruby
if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

if user_input.include? "s" # czy tekst zawiera literke „s”
#kod
end
```
* case

```ruby
case language
when "JS"
  puts "Websites!"
when "Python"
  puts "Science!"
when "Ruby"
  puts "Web apps!"
else
  puts "I don't know!"
end
```
* warunek if boolean
```ruby
puts "It's true!" if true
```

#Petle:

* while
```ruby
while condition  
  #code
end
```
* until
```ruby
i = 0
until i == 6
  i += 1
end
puts i
```

* for
```ruby
for num in 1...10
  puts num
end
1...10 # od 1 do 9
1..10  # od 1 do 10
```
* loop(break)
```ruby
i = 0
loop do
  i += 1
  print "#{i}"
  break if i > 5      #it breaks a loop as soon as its condition is met. 
end
```
* for(next)
```ruby
for i in 1..5
  next if i % 2 == 0  #The next keyword can be used to skip over certain steps in the loop. 
  print i
end
```
* times 
```ruby
10.times { print "Chunky bacon!" }
```
* .upto .downto
```ruby
95.upto(100) { |num| print num, " " }
# Prints 95 96 97 98 99 100
```


#Tablice:
```ruby
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end

#Wartosc w | | jest dowolna ponieważ służy ona tylko do przechowywania danej w obrocie petli
```

#Drukowanie wielowymiarowych tablic:
```ruby
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |sub_array|
    puts sub_array
end

=begin
ham
swiss
turkey
cheddar
roast beef
gruyere
=end

s.each do |sub_array|
    puts "#{sub_array}"
end
=begin
["ham", "swiss"]
["turkey", "cheddar"]
["roast beef", "gruyere"]
=end
```

#Pobieranie danych od uzytkownika:
```ruby
user_num = Integer(gets.chomp)
gets.chomp                    #chomp usuwa newline po każdym z inputów
```
#Drukowanie i drukowanie zmiennych:
```ruby
puts "Your name is #{name}"
```
lub
```ruby
print "Your name is #{name}"
```
#Hashe:

* sposoby tworzenia hashy
```ruby
prices = { 
  "apple" => 0.52,
  "banana" => 0.23,
  "kiwi" => 1.42
}
```
lub
```ruby
sounds = Hash.new
sounds["dog"] = "woof"
sounds["cat"] = "meow"
```
* drukowanie hashy
```ruby
my_hash.each { |x, y| 
puts "#{x}: #{y}" }

 "dog" => "woof"
 "cat" => "meow"
```
* sortowanie hashy
```ruby
frequencies = frequencies.sort_by do |letter,number|
    number
end
```
* wyswietlanie hashy z warunkami(select)

```ruby
grades = { alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

grades.select {|name, grade| grade < 97}
# ==> {:bob=>92, :chris=>95}

grades.select { |k, v| k == :alice }
# ==> {:alice=>100}
```