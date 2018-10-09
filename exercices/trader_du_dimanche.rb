def trader_du_dimanche(array)
	
	counter = 0
	counter_two = 0
	i = 0
	position_a = 0
	position_b = 0
	
	array_two = array

	array.each do |value| #on lance la première boucle
		while counter_two < array_two.size #on lance la deuxième boucle pour comparer le 1er chiffre de la première boucle à tous les autres chiffres	
			if array_two[counter_two] - array[counter] > 0 && array_two[counter_two] - array[counter] > i #on checke si la valeur est supérieur à 0 et à i
				i = array_two[counter_two] - array[counter]
				position_a = counter
				position_b = counter_two
			end
			counter_two += 1
		end
	counter += 1
	counter_two = counter #on copie le counter pour repartir directement sur la droite du chiffre analysée en première boucle dans la seconde boucle
	#counter_two = 0
	end
puts i
puts position_a
puts position_b
end

trader_du_dimanche([17,3,6,9,15,8,6,1,10])



