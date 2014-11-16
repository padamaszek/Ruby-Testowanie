  require 'open-uri'
  require 'csv'

class Tabelka < 
 Struct.new(:waluta1, :waluta2, :kurs, :dzien)

 def print_kurs
 	puts "\nWALUTA1  WALUTA2  KURS   DZIEN"
 	puts "#{waluta1.upcase} \t #{waluta2.upcase} \t #{kurs}  #{dzien}"
 end

 #zamiana walut
 def zamiana(il)
 	wynik = il*kurs.to_f
 	wynik = wynik.round(2)
 	puts "#{il} #{waluta1.upcase} = #{wynik} #{waluta2.upcase}"
 end


end

def sprawdz(x)#jak wyjsc z metody
  curr = ["EUR","USD","PLN","GBP","JPY","CAD","CHF"]
  dl = curr.length
  for i in 0...dl
  	if x.upcase == curr[i]
  		return 1
  	end
  end
return 0
end


def logowanie
	puts "Login:"
	log = gets.chomp
	puts "Haslo:"
	has = gets.chomp
 f = File.open("konta.txt", "r")
 f.each_line { |line|
	fields = line.split(' ')
	if log == fields[0] && has == fields[1]
		return 1
	else
		puts "ZLE DANE!!!"
		exit(0)
	end
	}
end

def rejestracja
  puts "Login:"
  log = gets.chomp
  puts "Haslo:"
  has = gets.chomp
  puts "Email" 
  ema = gets.chomp

  File.open("konta.txt", 'a') { |file|
   file.write("#{log} #{has} #{ema}\n") }
   puts "Rejestracja udana"
   menu

end



#pobieranie CSV
def waluty(x,y)
  open('waluty.csv', 'wb') do |file|
    file << open("http://download.finance.yahoo.com/d/quotes.csv?s=#{x}#{y}=X&f=sl1d1t1ba&e=.csv").read
  end
end

$gosc = 0
def menu
  puts "1. Logowanie"
  puts "2. Rejestracja"
  puts "3. Gosc (max liczba do wymiany to 10)"
  inp = gets.chomp
  case inp
    when inp = "1"
    	logowanie
  when inp = "2"
	rejestracja
  when inp = "3"
    $gosc = 1
  else
	exit(0)
  end
end

menu

print"Waluty : EUR, USD, PLN, GBP, JPY, CAD, CHF\n"
print "Podaj Walute Z: "
x = gets.chomp
if sprawdz(x) != 1
	p "ZLA WALUTA"
	exit(0)
end
print "Podaj Walute Na: "
y = gets.chomp
if sprawdz(x) != 1
	p "ZLA WALUTA"
	exit(0)
end
waluty(x,y)

#pobieranie wartosci
tab = Array.new

f = File.open("waluty.csv", "r")
f.each_line { |line|
	fields = line.split(',')
	wal = Tabelka.new
	wal.waluta1=x
	wal.waluta2=y
	wal.kurs = fields[1]
	wal.dzien = fields[2]

	tab.push(wal)
}

tab.each do |x|
	x.print_kurs
end

#zamiana walut 
if $gosc == 1
	puts "Podaj ilosc #{x} ktora chcesz zamienic(max 10)"
	il = gets.chomp.to_i
	if il > 10
		puts "Podano wartosc wieksza niz 10!!!"
		exit(0)
	end
    tab.each do |x|
	x.zamiana(il)
end
puts "Podaj ilosc #{x} ktora chcesz zamienic"
il = gets.chomp.to_i
tab.each do |x|
	x.zamiana(il)
end
end
