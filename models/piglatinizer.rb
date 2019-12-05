class PigLatinizer
  
  def piglatinize(word)
  
      pl_words = []
      split_words = word.split()
  
      split_words.each do |word|
        if word[0].scan(/[aeiouAEIOU]/).count == 1 
          pl_words << word + 'way'
        else   
          words = word.split(/[aeiouAEIOU].*/)[0]
          word.slice!(0 .. words.length-1)
          pl_words << word + words + 'ay' 
        end 
      end 
  
      pl_words.join(' ')
  end

end