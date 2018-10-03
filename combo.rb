def ask_first_name
    print "C'est quoi tom prenom: "
    gets.chomp.to_s
end

def say_hello(first_name)
	puts "hello #{first_name}!!!"
end

say_hello(ask_first_name)