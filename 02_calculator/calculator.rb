def add x,y
	x+y
end

def subtract x,y
	x-y
end

def sum x
	z=x.length
	total=0
	for i in 0..z
		total+=x[i].to_i
	end
	total
end

def multiply (array)
	multiply = 1
	array.each do |n|
		multiply = multiply * (n)
	end
	return multiply
end

def power x,y
	x**y
end

def factorial x
	answer = 1
	for i in 1..x
		answer*=i
	end
	answer
end