# class PigLatinizer
#     def piglatinize(input_str)
#         input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
#     end

#     private

#     def consonant?(char)
#         !char.match(/[aAeEiIoOuU]/)
#     end

#     def piglatinize_word(word)
#         if !consonant?(word[0])
#             word = word + "w"
#         elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
#             word = word.slice(3..-1) + word.slice(0,3)
#         elsif consonant?(word[0]) && consonant?(word[1])
#             word = word.slice(2..-1) + word.slice(0,2)
#         else
#             word = word.slice(1..-1) + word.slice(0)
#         end
#         word << "ay"
#     end

#     def piglatinize_sentence(sentence)
#         sentence.split.collect {|word| piglatinize_word(word) }.join(" ")
#     end

# end

# class PigLatinizer

#     def piglatinize(input_str)
#       input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
#     end
  
#     private
  
#     def consonant?(char)
#       !char.match(/[aAeEiIoOuU]/)
#     end
  
#     def piglatinize_word(word)
#       # word starts with vowel
#       if !consonant?(word[0])
#         word = word + "w"
#       # word starts with 3 consonants
#       elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
#         word = word.slice(3..-1) + word.slice(0,3)
#       # word starts with 2 consonants
#       elsif consonant?(word[0]) && consonant?(word[1])
#         word = word.slice(2..-1) + word.slice(0,2)
#       # word starts with 1 consonant
#       else
#         word = word.slice(1..-1) + word.slice(0)
#       end
#       word << "ay"
#     end
  
#     def piglatinize_sentence(sentence)
#       sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
#     end
  
  
  
  
#   end

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