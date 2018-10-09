def fileReading(filename)
	data = String.new
	f = File.open(filename, "r")
	f.each_line do |line|
		data += line
	end
	puts data
end

fileReading("file.txt")