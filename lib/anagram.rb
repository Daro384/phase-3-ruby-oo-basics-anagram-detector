class Anagram 
    def initialize word
        @word = word
    end

    def match word_array
        word_characters = @word.split(//).sort()
        return_words = []
        word_array.each do |word|
            if word.split(//).sort() == word_characters
                return_words.append(word)
            end
        end
        return_words
    end
end

listen = Anagram.new("listen")
puts listen.match(%w[enlists google inlets banana])