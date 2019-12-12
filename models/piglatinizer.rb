class PigLatinizer
  
  def piggu(word)
    if word[0].match(/[aeiouAEIOU]/)
      word << "w"
    else
      word << word.slice!(0) until word[0].match(/[aeiouAEIOU]/)
    end
    word << "ay"
  end
  
  def piglatinize(phrase)
    phrase.split(" ").map{ |word| piggu(word) }.join(" ")
  end
  
end