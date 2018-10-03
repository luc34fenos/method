def nbre 
	p "bienvenue sur mon super extra pyramide, vous voullez combien d'etage?"
	gets.chomp.to_i
end

def odd_pyramide(n)
	p "voici le pyramide:"
	(n+1).times{|x| 
		if x%2 == 1
			puts " "*((n-x)/2) + "#" * x + " "*((n-x)/2)
		end
	}
end

def pyramide
	odd_pyramide(nbre)
end

pyramide()