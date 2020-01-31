class PigLatinizer
  attr_reader :text
  
  def initialize
    
  end
  
  def piglatinize(user_phrase)
    pig_sentence = []
    sentence = user_phrase.split()
    sentence.each do |word|
      i = 0
      word.split("").each do |letter|
        if letter == letter.scan(/[aeiouAEIOU]/)[0] && i == 0
          pig_sentence << word + "way"
          break
        elsif letter == letter.scan(/[aeiouAEIOU]/)[0] && i > 0
          pig = word.split(letter)[0]
          word.slice!(pig)
          pig_sentence << word + pig + "ay"
          break
        end
        i += 1
      end
    end
    pig_sentence.join(" ")
  end

end