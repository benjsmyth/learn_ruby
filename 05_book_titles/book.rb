class Book
	attr_accessor :title

	def title
		little_words = ["the", "and", "an", "a", "of", "in"]

		words = @title.split(" ")
		words.map! {|word| little_words.include?(word) ? word : word.capitalize}
		title = words.join(" ")
		title = title[0].upcase + title.slice(1, title.length)
		return title
	end
end