class Book
	attr_reader :title

	def title=(str)
		no_caps = ["and","but","if","in","of","the","a","an"]
		str = str.split
		str.length.times do |i|
			if !no_caps.include?(str[i])
				str[i].capitalize!
			end
		end
		str[0] = str[0].capitalize
		@title = str.join(" ")
	end
end
