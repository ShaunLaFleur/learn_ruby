def add(x, y) 
	x+y
end

def subtract(x, y)
	x-y
end

def sum(a)
	if a.length != 0
		num = a[0]
		1.upto(a.length-1) do |i|
			num += a[i]
		end
	else 
		num = 0
	end
	num
end

def mult(a)
	if a.length != 0
		num = a[0]
		1.upto(a.length-1) do |i|
			num *= a[i]
		end
	else 
		num = 0
	end
	num
end

def powerOf(base, exp)
	num = base
	(exp-1).times do
		num *= base
	end
	num
end

def factorial(num)
	result = 1
	if num != 0
		2.upto(num) do |i|
			result *= i
		end
	end
	result
end

12345