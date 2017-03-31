def translate(str)
	vowels = ["a","e","i","o","u","y"]
	# Split the string to create an array containing each individual word.
	str = str.downcase.split
	# Once the string is split, we cycle through each word in the split string and perform translations on them based on piglatin rules.
	str.length.times do |i|
		# Translates words starting with vowels
		if vowels.include?(str[i][0])
			str[i] = str[i]+"ay"
		# Treats "qu" as a single phoneme.
		elsif str[i][0..1] == "qu"
			str[i] = str[i][2..str[i].length-1]+"quay"
		# Translates words starting with one consonant followed by "qu", ie "squ".
		elsif str[i][1..2] == "qu"
				str[i] = str[i][3..str[i].length-1]+str[i][0..2]+"ay"
		# Translates words starting with three consonants. Since "sch" falls under this rule we don't need to make separate check for it.
		elsif !vowels.include?(str[i][0]) && !vowels.include?(str[i][1]) && !vowels.include?(str[i][2])
			str[i] = str[i][3..str[i].length-1]+str[i][0..2]+"ay"
		# Translates words starting with two consonants
		elsif !vowels.include?(str[i][0]) && !vowels.include?(str[i][1])
			str[i] = str[i][2..str[i].length-1]+str[i][0..1]+"ay"
		# Translates words starting with one consonant.
		else
			str[i] = str[i][1..str[i].length-1]+str[i][0]+"ay" # remove +"ay" and add an if statement checking for if str[i][1..2] = "qu" then if true do str[i] = str[i]+"qu"
		end
	end
	str.join(" ") 
end