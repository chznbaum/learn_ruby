#write your code here
def translate(expression)
  vowels = "aeiou"
  expression_array = expression.split(" ")
  def move_first_letter(word)
  	first_letter = word[0]
  	word.delete! first_letter
  	word << first_letter
  end
  expression_array.each do |word|
  	until vowels.include?(word[0])
  	  move_first_letter(word)
  	end
  	if word[0] == "u" && "Qq".include?(word[-1])
  	  move_first_letter(word)
  	end
  	word << "ay"
  end
  expression = expression_array.join(" ")
end