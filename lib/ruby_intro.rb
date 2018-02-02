# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	arr.inject(0, :+)
end

def max_2_sum arr

	if arr.length == 0
		sum = 0
	end

	if arr.length == 1
		sum = arr.max
	end

	if arr.length > 1
		arr = (arr - [0]).sort
		sum = 0
		max = arr.last
		sum += max
		arr.pop
		max = arr.last
		sum += max
	end
	
	return sum
end

def sum_to_n? arr, n
  
	if arr.length <= 1
		return false
	end
	
	arr.each do |num1|
		arr.each do |num2|
			if num1+num2 == n and num1!=num2
				return true
			end
		end
	end
	
	return false
end

# Part 2

def hello(name)
	newName = "Hello, " + name
	return newName
end

def starts_with_consonant? s
	
	if /^[^aeiouAEIOU]/ =~ s
		if /^[a-zA-Z]/ =~ s
			return true
		end
	end
	
	return false
end

def binary_multiple_of_4? s

	s = s.reverse	
	place = 1
	sum = 0
	
	if s.length == 0
		return false
	end
		
	s.each_char do |char|
		if char != "0" and char != "1"
			return false
		else
			sum += char.to_i*place
		end	
		
		place *= 2
	end
	
	if sum%4==0
		return true
	end
	
	return false
end

# Part 3

class BookInStock
	def initialize(isbn, price)		
		if price <= 0 or isbn.length == 0
			raise ArgumentError
		end
		
		@isbn = isbn
		@price = price.to_f
	end
	
	attr_accessor :isbn
	attr_accessor :price
	
	def price_as_string
		return "$" + "%.2f"%@price.to_s

	end
end
