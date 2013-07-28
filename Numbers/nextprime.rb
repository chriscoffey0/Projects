def get_next_prime(number)
	is_prime = false
	#keep searching till the next prime is found
	while !is_prime
		is_prime = true
		#start looking at the next number
		number += 1
		#check to make sure number is only divisible by 1 and self
		(2..(number-1)).each do |factor|
			is_prime = false if number%factor == 0
		end
	end
	#prime found, so return it
	return number
end

#menu loop
current_prime = 1
option = 0
while option != 3
	puts "Main menu\n====================================="
	puts "Current Prime is: #{current_prime}\n1) Find Next\n2) Set Start\n3) Exit"
	option = gets.chomp.to_i
	current_prime = get_next_prime(current_prime) if option == 1
	if option == 2
		print "Enter number to start looking from: "
		current_prime = gets.chomp.to_i
	end
end