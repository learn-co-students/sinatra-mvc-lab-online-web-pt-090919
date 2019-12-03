class PigLatinizer
  attr_reader :user_phrase

  def initialize
    @user_phrase = user_phrase
  end

  def piglatinize(string)
    result = []
    word_array = string.split
    word_array.map do |word|
      letter_array = word.chars
      if letter_array[0].downcase.start_with?('a','e','i','o','u')
        letter_array << ["way"]
        result << letter_array.join
      else
        until letter_array[0].downcase.start_with?('a','e','i','o','u') do
          consonant = letter_array.shift
          letter_array << consonant
        end
        letter_array << ["ay"]
        result << letter_array.join
      end
    end
    result.flatten.join(" ")
  end
end
