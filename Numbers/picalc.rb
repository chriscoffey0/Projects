#Ruby implementation of Spigot algorithm

def picalc(digits)
	len = 10*digits/3+1
	
	#Step 1 - define new array of size [10n/3]+1 containing 2s
	a = Array.new(len).fill(2)

	#define arrays to hold series values
	n = Array(0..len)
	d = n.collect {|x| x*2+1}

	#Step 2 - repeat n times
	digits.times do
		#multiply each entry of the array by 10
		a.collect! {|x| x*10}

		#put the array into regular form
		
	end
end

print "Calc how many digits of Pi: "
digits = gets.chomp.to_i

puts "Pi to #{digits} digits: #{picalc(digits)}"
