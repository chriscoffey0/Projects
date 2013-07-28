#return if a number is prime or not
def is_prime(number)
	prime = true
	(2..(number-1)).each do |factor|
		prime = false if number%factor == 0
	end
	return prime
end

#get all factors of a number > 1
def get_factors(number)
	factors = Array.new
	(2..(number-1)).each do |factor|
		factors << factor if number%factor == 0
	end
	return factors
end

print "Enter a number to find prime factors: "
print get_factors(gets.chomp.to_i).select {|x| is_prime(x)==true}