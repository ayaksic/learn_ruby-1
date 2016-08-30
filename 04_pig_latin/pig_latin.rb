def translate s
	vowels = ['a', 'e', 'i', 'o', 'u']
	if s.include?(' ')
		words = s.split(' ')
		counter = words.length-1
		(0..counter).each do |i|
			newword = words[i]
			if newword[0..1] == 'qu'
				stop_point = newword.length
				insertword = newword[2..stop_point]+newword[0..1]+'ay'
				words[i] = insertword
			elsif newword[1..2] == 'qu'
				stop_point = newword.length
				insertword = newword[3..stop_point]+newword[0..2]+'ay'
				words[i] = insertword
			elsif vowels.include?(newword[0])
				insertword = newword+'ay'
				words[i] = insertword
			elsif vowels.include?(newword[1])
				stop_point = newword.length
				insertword = newword[1..stop_point]+newword[0]+'ay'
				words[i] = insertword
			elsif vowels.include?(newword[2])
				stop_point = newword.length
				insertword = newword[2..stop_point]+newword[0..1]+'ay'
				words[i] = insertword
			end
		end
		return words.join(' ')
	elsif s[0..1] == 'qu'
		stop_point = s.length
		words = s[2..stop_point]+s[0..1]+'ay'
		return words
	elsif s[1..2] == 'qu'
		stop_point = s.length
		words = s[3..stop_point]+s[0..2]+'ay'
		return words
	elsif vowels.include?(s[0])
		words = s+'ay'
		return words
	elsif vowels.include?(s[1])
		stop_point = s.length
		words = s[1..stop_point]+s[0]+'ay'
		return words
	elsif vowels.include?(s[2])
		stop_point = s.length
		words = s[2..stop_point]+s[0..1]+'ay'
		return words
	elsif vowels.include?(s[3])
		stop_point = s.length
		words = s[3..stop_point]+s[0..2]+'ay'
		return words
	end
end