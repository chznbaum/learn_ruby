class Book
# write your code here
  def initialize
  	@title = title
  end
  def title
  	@title
  end
  def title=(title)
    title_array = title.split(" ")
  	title_array.each do |word| 
  	  word[0] = word[0].upcase unless articles(word)
  	  if "Ii".include?(word) { word[0] = word[0].upcase }
  	  end
  	  word
  	end
  	title_array[0][0] = title_array[0][0].upcase
  	title = title_array.join(" ")
  	@title = title
  end
  def articles(word)
    conjunctions_list = %w[and both but either for neither nor or rather so such that whether yet]
  	prepositions_list = %w[a an aboard about above abreast abroad absent across adjacent after against along alongside amid among apropos apud around as astride at atop bar before behind below beneath beside besides between beyond but by chez circa come despite down during except for from in inside into less like minus near notwithstanding of off on onto opposite out outside over pace past per post pre pro qua re sans save short since than the through throughout to toward towards under underneath unlike until up upon upside versus via with within without worth]
    if conjunctions_list.include?(word) || prepositions_list.include?(word)
      true
    end
  end
end
