#!/bin/env ruby
# encoding: utf-8
     
     
    class Node <
     Struct.new(:index, :czas, :poprzednik, :start, :koniec)
    end

    def cykl(lista)
    for i in (0...lista.length) do
		dlpoprzed = lista[i].poprzednik.length
		for j in (0...dlpoprzed) do
			if lista[i].index.to_i <= lista[i].poprzednik[j].to_i then
		puts "Podany graf jest cykliczny. Wychodzę z programu."
		exit
			end
		end
	end

    end
     
    def sort(lista)
     lista.sort! { |a,b| a.index <=> b.index }
    end
     
    def CMP(lista)
     $ilosc = lista.length
     $sciezkaKryt = ""
     for i in (0...$ilosc) do
    # w przypadku jak wezel nie ma poprzednika
      if lista[i].poprzednik.length == 0 then
       lista[i].start = 0
       lista[i].koniec = lista[i].czas
       $sciezkaKryt = $sciezkaKryt + "#{lista[i].index}->"
     end
    # w przypadku jak wezel ma 1 poprzednika
     if lista[i].poprzednik.length == 1 then
       poprz = lista[i].poprzednik[0].to_i
       lista[i].start = lista[poprz-1].koniec
       lista[i].koniec = lista[i].start + lista[i].czas
       $sciezkaKryt = $sciezkaKryt + "#{lista[poprz-1].index}->"
     end
    # w przypadku jak wezel ma wiecej niz 1 poprzednika
     if lista[i].poprzednik.length > 1 then
       ilpoprzed = lista[i].poprzednik.length
       max = 0
            for j in (0...ilpoprzed) do
                    pom = lista[i].poprzednik[j]-1
           if lista[pom].koniec > lista[max].koniec
                    max = pom
                    end
                    end
       lista[i].start = lista[max].koniec
       $sciezkaKryt = $sciezkaKryt + "#{lista[max].index}->"
       lista[i].koniec = lista[i].start + lista[i].czas
      end
     end
    end
     
    lista = Array.new
    puts "Podaj liczbę węzłów:"
    n = gets.chomp.to_i
     
    #Input kazdego wezla
     for i in (0...n) do
     wezel = Node.new
     p "#{i}. indeks: "
     wezel.index = gets.chomp
     p "#{i}. czas: "
     wezel.czas = gets.chomp.to_i
     p "#{i}. poprzednicy: "
     wezel.poprzednik = gets.chomp
     wezel.poprzednik = wezel.poprzednik.split(' ').map(&:to_i)
     lista[i] = wezel
     end
    cykl(lista)
    sort(lista)
    CMP(lista)
     
    #drukowanie
    puts "Indeks\t | Czas\t | Poprzednicy \t | EST\t | EET\t"
    lista.each do |x|
            puts "#{index}\t | #{czas}\t | #{poprzednik} \t | #{est}\t | #{eet}\t"
    end
    puts "\t\tSciezka krytyczna :#{$sciezkaKryt} #{lista[$ilosc-1].index}"
    czasKryt = lista[$ilosc-1].koniec
    puts "\t\tCzas krytyczny    :#{czasKryt}"

