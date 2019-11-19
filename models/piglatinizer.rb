class PigLatinizer 

  def piglatinize(phrase) 
    piglatinized = []
    split_phrase = phrase.split()

    split_phrase.each do |word|
      if word[0].scan(/[aeiouAEIOU]/).count == 1 
        piglatinized << word + 'way'
      else   
        cluster = word.split(/[aeiouAEIOU].*/)[0]
        word.slice!(0 .. cluster.length-1)
        piglatinized << word + cluster + 'ay' 
      end 
    end 

    piglatinized.join(' ')
  end 

end 