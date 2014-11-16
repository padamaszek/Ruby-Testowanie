def gra(low, high, kolejka=1)
 
  liczba = (low + high) / 2
  print "Zgadywanie #{liczba}\t"
  case sprawdzenie(liczba)
  when 1
    puts "zbyt duza liczba"
    gra(low, liczba - 1, kolejka + 1)
  when -1
    puts "zbyt mala liczba"
    gra(liczba + 1, high, kolejka + 1)
  else
    puts "Zgadles liczbe za #{kolejka} razem."
  end
end
 
def sprawdzenie(liczba)
  liczba <=> $number
end
 
low, high = 1, 100
$number = rand(low .. high)
 
puts "Zgadnij liczbe pomiedzy #{low} a #{high}"
gra(low, high)