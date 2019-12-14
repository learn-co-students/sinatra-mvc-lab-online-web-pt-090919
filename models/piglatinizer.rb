class PigLatinizer
  # costant var
  VOWELS = ["a","e","i","o","u","A","E","I","O","U"]
  
  def piglatinize_word(word)
    # word = word.downcase
    first_letter = word[0]
    
    # word starts with vowel
    if VOWELS.include?(first_letter)
      return "#{word}way"
    else
    # word begins with 1, 2, or 3 consonants, never more than 3
      consonants = [word[0]]
      # 2 consonants
      if VOWELS.include?(word[1]) == false
        consonants << word[1]
        
        # 3 consonants
        if (word.length > 2) && (VOWELS.include?(word[2]) == false)
          consonants << word[2]
        end
      end
      
      piglatinized = word[consonants.length..-1] + consonants.join + "ay"
      return piglatinized
    end
  end
  
  def piglatinize(input)
    if input.include?(" ")
      words_array = input.split(" ")
      piglatinized_phrase = words_array.collect {|word| piglatinize_word(word)}
      return piglatinized_phrase.join(" ")
    else
      piglatinize_word(input)
    end
  end

end