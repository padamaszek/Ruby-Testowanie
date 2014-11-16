n = 10_000                  #liczba gier do rozegrania
 
stay = switch = 0           #zerowanie ilosci zmiany decyzji i zostania przy swoim
 
n.times do                  #graj n razy
 
  #za drzwiami sa dwie kozy i jeden samochod
  doors = [ :goat, :goat, :car ].shuffle
 
  #losowy wybor drzwi
  guess = rand(3)
 
  #losowe pokazanie drzwi ale to nie jest nasz losowy wybor ani samochod
  begin shown = rand(3) end while shown == guess || doors[shown] == :car
 
  if doors[guess] == :car
    #jezeli za drzwiami ktore wybralismy byl samochod dodajemy 1 do nie zmieniania wyboru
    stay += 1
  else
    #jezeli za drzwiami ktore wybralismy nie bylo samochodu dodajemy 1 do zmieniania wyboru
    switch += 1
  end
 
end
 
puts "Nie zmieniajac wygralismy %.2f%% gier."   % (100.0 * stay / n)
puts "Zmieniajac wygralismy %.2f%% gier." % (100.0 * switch / n)