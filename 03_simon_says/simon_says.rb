def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, x=2)
	[str] * x * " "
end

def start_of_word(str, amount)
	str[0,amount]
end

def first_word(str)
	str.length.times do |i|
		if str[i] == " "
			return str[0,i]
		end
	end
end

def titleize(str)
	no_caps = ["of","the","over", "and"]
	new_str = str.split.each{|i| i.capitalize! if ! no_caps.include? i }
	new_str[0].capitalize!
	new_str.join(" ")
end