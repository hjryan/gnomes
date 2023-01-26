def gnome_nalysis(gnome_party_outside, color)
    """ looks through gnomes outside array until a gnome is a different color than the leftmost gnome (or at end, if N/A), inserts self at this index """
	leftmost_gnome = gnome_party_outside[0]
	for i in 1..gnome_party_outside.length-1
		if gnome_party_outside[i]!=leftmost_gnome
			gnome_party_outside.insert(i,color)
			return
		end
	end
	gnome_party_outside.push(color)
end

def generate_color()
    """ generates and returns red or blue gnomecolor at random """
	color = rand(2)
	if color == 1
		return "B"
	else
		return "R"
	end
end

def put_gnome(color)
    """ prints the color of a given gnome """
	put "#{color}"
end

def puts_pretty_gnome()
    """ reads gnome ascii art from file & prints to console """
	gnome_file = File.open('gnome.txt', 'rb')
	gnome = gnome_file.read()
	puts gnome
end

# gets user input, converts string to int
puts 'How many gnomes are in this hypothetical cave?'
gnomes_in_cave = gets.chomp.to_i

# if no gnomes, no additional work needed
if gnomes_in_cave == 0
	puts 'No gnomes, goodbye.'
	exit
end

# if gnomes, give them an array to sort themselves with outside
gnome_party_outside = []

# while there are gnomes to assess:
#   assign each a color at random
#   send outside (sorting, if necessary)
#   decrement quantity remaining in cave
#   print current outside gnomes
while gnomes_in_cave > 0
	color = generate_color()
	if gnome_party_outside.empty? 
		gnome_party_outside.push(color)
	else
		gnome_nalysis(gnome_party_outside, color)
	end
	gnomes_in_cave = gnomes_in_cave-1
	print gnome_party_outside
	puts
end

# if gnomes in cave goes negative, alert user to program error
while gnomes_in_cave < 0
	puts 'What in the heck is a negative gnome?'
	response = gets.chomp.to_s+'? I don\'t think so. Good BYE.'
	puts response
	exit
end

puts_pretty_gnome()