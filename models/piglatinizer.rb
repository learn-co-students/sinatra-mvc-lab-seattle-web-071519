class PigLatinizer

    def piglatinize(words)
        # iterate through the string until we find the first vowel
        # move the characters up until the first vowel to the end of the string
        # add "ay" to the end of the string

        words.split(" ").map do |word|
            piglatin(word)
        end.join(" ")
    end

    #helper method to piglatinize 1 word
    def piglatin(word)
        new_string = ""
        vowels = ("aeiou")
        word.split("").each_with_index do |letter, index| 
            if !vowels.include?(letter.downcase)
                next
            else
                if index == 0
                    new_string += word + "way"
                    return new_string
                else
                    up_to_vowel = word.slice(0...index)
                    after_vowel = word.slice(index..-1)
                    new_string += after_vowel + up_to_vowel + "ay"
                    return new_string
                end
            end
        end
    end
end