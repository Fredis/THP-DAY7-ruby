def chiffre_de_cesar(string, key)
	#97 = a
	#122 = z

	#65 = A
	#90 = Z

	tab_element = 0
	array = []
	array = string.split
	puts array.size

	array.each do | element |
		word_for_element = String.new
	
		element.each_char do |letter| #on passe en revue, toutes les lettres de notre mot
			letter_key = letter.ord + key #on prendre le caractère ASCII de la lettre et on lui ajouter la clé pour se déplacer
				
				if letter.ord >= 65 && letter.ord <= 90
					while letter_key > 90 #tant que le caractère ASCII de la letter est supérieur à 122 (= z) alors on exécuter la boucle
						letter_key = (letter_key - 91)+65 #on fait la comparaison entre la position ASCII de letter_key et 123 et lui ajouter 97 (pour répartir de a dans l'ordre alphabétique)
					end
				else
					while letter_key > 122 #tant que le caractère ASCII de la letter est supérieur à 122 (= z) alors on exécuter la boucle
						letter_key = (letter_key - 123)+97 #on fait la comparaison entre la position ASCII de letter_key et 123 et lui ajouter 97 (pour répartir de a dans l'ordre alphabétique)
					end
				end
			
			word_for_element = word_for_element + letter_key.chr #on affiche notre lettre
		end
	
		array[tab_element] = word_for_element
		tab_element += 1
	
	end
	puts array.join(" ").strip
end

puts "Quel est le texte que tu souhaites coder ?"
print "> "
text = gets.chomp
chiffre_de_cesar(text, 300)
