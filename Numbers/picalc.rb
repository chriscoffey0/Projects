#Ruby implementation of Spigot algorithm
#returns digits of pi in a string
def picalc(digits)
	len = 10*digits/3+1

	pi_held = Array.new
	pi_true = ""
	
	#Step 1 - define new array of size [10n/3]+1 containing 2s
	a = Array.new(len).fill(2)

	#Step 2 - repeat n times
	digits.times do
		#multiply each entry of the array by 10
		a.collect! {|x| x*10}

		#put the array into regular form
		(1..(len-1)).each do |x|
			index = len-x
			#calculate remainder
			rem = a[index]%(2*index+1)
			#calculate quotient
			quot = (a[index]-rem)/(2*index+1)
			#calculate carry
			carry = quot*index
			#store the remainder in array a (current index)
			a[index] = rem
			#add the carry to array a (next index)
			a[index-1] += carry
		end

		#get the pre-digit
		rem = a[0]%10
		quot = (a[0]-rem)/10
		#set the 0 index to the remainder
		a[0] = rem
		#release the held queue if not 9 or 10
		if quot < 9
			pi_held.each {|x| pi_true += x.to_s}
			pi_held = Array.new
		end
		#if quot is 10, rot and release held, otherwise add quot to held
		if quot == 10
			#increase all held digits by 1 (9 becomes 0)
			pi_held.collect! {|x| (x+1)%10}
			#release held digits to true
			pi_held.each {|x| pi_true += x.to_s}
			pi_held = Array.new
			#hold 0 as a predigit
			pi_held << 0
		else
			pi_held << quot
		end
	end
	#flush held to true for remaining digits
	pi_held.each {|x| pi_true += x.to_s}
	#insert a decimal point
	pi_true.insert 1,"."
	return pi_true
end

print "Calc how many digits of Pi: "
digits = gets.chomp.to_i

if digits <= 2000
	puts "Pi to #{digits} digits: #{picalc(digits)}"
else
	puts "This will take too much time! Try a smaller number."
end