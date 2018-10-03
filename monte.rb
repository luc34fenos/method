def place(n)
    11.times{ |i|
        if (i != (n-1))
            (11-i).times{print " "}
            print "#" * (i)
        else
            (11-i-1).times{print " "}
            print "G"
            print "#" * (i)
        end
        puts""
    }
end

n = 1
place(10)

while n < 10
    puts "entrer e resultat du dee"
    m = Integer(gets.chomp)
    if (m >= 5) && (n != 9)
        n += 1
        puts "vous avancez d'un marche, ainsi vous ets au marche n #{n}"
        place(10-n+1)
    elsif (m >= 5) && (n == 9)
        puts "Bravo, vous avez passer la marche"
        break
    elsif (m <= 1) && (n != 1)
        n -= 1
        puts "vous descendez d'un marche, ainsi vous ets au marche n #{n}"
        place(10-n+1)
    elsif (m <= 1) && (n == 1)
        puts "vous avez descendue de la dernier marche"
        puts "game over"
        break
    else
        puts "vous restez sur la marche n #{n}"
        place(10-n+1)
    end
end