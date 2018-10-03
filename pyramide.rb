def hauteur
	puts "bienvenue sur mon super extra pyramide, vous voullez combien d'etage?"
	print ">"
	gets.chomp.to_i
end

def pyr_mario(n)
	for i in (1..n) do
		(n-i).times{print " "}
			print "#" * (i)
		puts""
	end
end

pyr_mario(hauteur)