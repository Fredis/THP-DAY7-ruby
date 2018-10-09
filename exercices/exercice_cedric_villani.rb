def operations(number)
	array = []
	i = 1
	while i < number
		if i%3 == 0 || i%5 == 0
			array << i
		end
		i += 1
	end
	puts "L'addition de tous les entiers naturels en dessous de #{number} divisibles par 3 ou 5 est : #{array.inject(0, &:+)}"
end
operations(1000)