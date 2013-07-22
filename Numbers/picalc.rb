#Ruby implementation of Spigot algorithm

def picalc(digits)
	len = 10*digits/3+1
	
	#Step 1 - define new array of size [10n/3]+1 containing 2s
	a = Array.new(len).fill(2)

	#Step 2 - repeat n times
	digits.times do
		#multiply each entry of the array by 10
		a.collect! {|x| x*10}

		#put the array into regular form
		(1..len).each do |x|
			print a
			#calculate quotient

			#calculate remainder
		
			#calculate carry
		
			#store the remainder in array a (current index)
		
			#add the carry to array a (next index)
	
		end
	end

	print a
end

print "Calc how many digits of Pi: "
digits = gets.chomp.to_i

puts "Pi to #{digits} digits: #{picalc(digits)}"
