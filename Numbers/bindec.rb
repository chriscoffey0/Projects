def dec_to_bin(value)
	num = ""
	while value > 0
		#if even, shift in a 0
		if value%2 == 0
			num.insert 0,"0"
		#if odd, shift in a 1
		else
			num.insert 0,"1"
			value -= 1
		end
		#divide by 2 (this num will always be even)
		value = value/2
	end
	return num
end

def bin_to_dec(value)
	num = 0
	#add each number as a power of 2 to the total
	(1..value.length).each do |bin|
		num += 2**(bin-1) if value[-bin].to_i == 1
	end
	return num
end

#menu loop
option = 0
while option != 3
	puts "Main menu\n====================================="
	puts "1) Decimal to Binary\n2) Binary to Decimal\n3) Exit"
	option = gets.chomp.to_i
	if option < 3 and option > 0
		print "Enter a number to convert: "
		number = gets.chomp
		print "Converted value is: "
		print "#{dec_to_bin(number.to_i)}\n\n" if option == 1
		print "#{bin_to_dec(number)}\n\n" if option == 2
	end
end