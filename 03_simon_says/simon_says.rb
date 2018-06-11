def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(*args)
	args.length === 1 ? string = (args[0] + " ") * 2 : string = (args[0] + " ") * args[1]
	string.slice!(string.length - 1)
	return string
end

def start_of_word(string, n)
	return string.slice(0, n)
end

def first_word(string)
	string_array = string.split(" ")
	return string_array[0]
end

def titleize(string)
	string.downcase!
	string_array = string.split(" ")
	little_words = ["the", "and"]
	string_array.map! {|string| little_words.include?(string) ? string : string.capitalize}
	new_string = string_array.join(" ")
	new_string = new_string[0].upcase + new_string.slice(1, new_string.length)
	return new_string
end