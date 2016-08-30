class Book
	attr_accessor :title

	def title
		banned_words = ['the', 'and', 'an', 'a', 'in', 'of']
		words = @title.split(' ')
		counter = words.length-1
		words[0] = words[0].capitalize
		(1..counter).each do |i|
			if banned_words.include?(words[i])
			else words[i] = words[i].capitalize
			end
		end
		@title = words.join(' ')
	end
	@title
end