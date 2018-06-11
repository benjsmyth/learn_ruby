def translate(word)
	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm','n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']
	vowels = ['a', 'e', 'i', 'o', 'u', 'y']

	word = word.downcase
	suffix = "ay"
	translated_phrase = ""

	phrase_array = word.split(" ")

	phrase_array.each do |word|
		prefix = []
		middle = []
		translated_array = []

		chars = word.chars

		i = 0
		while i < chars.length
			if consonants.include?(chars[i])
				prefix.push(chars[i])
				
			elsif chars[i] === "u" and chars[i - 1] === "q"
				prefix.push(chars[i])

			elsif vowels.include?(chars[i])
				middle = chars.slice(i, chars.length)
				break

			end
			
			i += 1
		end
		
		translated_array = middle.concat(prefix)
		translated_phrase = translated_phrase + translated_array.join("") + suffix + " "
	end

	translated = translated_phrase.slice(0, translated_phrase.length - 1)
	return translated
end