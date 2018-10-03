class Account
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def perform()
		define_password(@name)
		password_verification()
	end

	def define_password(n)
		print "salut #{n}!!! veuillez entrer votre mot de passe: "
		@user_password = gets.chomp
	end

	def password_verification()
		print  "veuillez re-entrer votre mot de passe: "
		while @user_password != gets.chomp
			puts errer
			puts "veuillez re-essayer"
		end
		puts "mot de pass sauvegardee!!!"
	end

	def connection()
		puts "You are offline"
		puts "Entrer votre mot de passe pour vous connecter: "
		print ">"
		while @user_password != gets.chomp
			puts errer
			puts "veuillez re-essayer"
		end
		puts "vous etes maintenant connectee"
	end 

	def errer
		"erreur!!! mot de passe incorrect"
	end
end

fenos = Account.new("luc")
fenos.perform()
fenos.connection()