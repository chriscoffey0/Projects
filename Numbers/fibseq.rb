print "Get Fib sequence to how many terms: "
terms = gets.chomp.to_i

p = 0
print "#{p} " if terms > 0
n = 1
print "#{n} " if terms > 1
(3..terms).each do
	c = p + n
	p = n
	n = c
	print "#{n} "
end