def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum(array)
	if array.empty?
		return 0

	else
		array.sum

	end
end

def multiply(*numbers)
	product = numbers.inject(1) {|product, number| product * number}
	return product
end

def power(a, b)
	return a ** b
end

def factorial(n)
	if (n === 0)
		return 1

	else
		range = Array(1..n)
		factorial = range.inject(1) {|product, number| product * number}
		return factorial
		
	end
end