def echo x
	x
end

def shout x
	x.upcase
end

def repeat x, y=2
	((x+' ')*y).chop
end

def start_of_word x, y
	x[0..y-1]
end

def first_word x
	unless x.include? ' '
		return x
	end
	space = x.index(' ')
	x[0..space-1]
end

def titleize x
	array = x.chars.to_a
	length = x.length
	space = ' '
	array[0] = array[0].upcase
	for i in 0..length
		if array[i-1] == ' '
			if x[i..i+2] == 'and' 
			elsif x[i..i+3] == 'over'
			elsif x[i..i+2] == 'the'
			else array[i] = array[i].upcase
			end
		end
	end
	array.join
end
	