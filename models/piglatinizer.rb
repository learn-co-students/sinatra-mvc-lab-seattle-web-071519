class PigLatinizer
    attr_reader :mix
    def initialize

    end

    def piglatinize(sentence)
        words = sentence.split(" ")
        mix = words.map do |word|
            warp(word)
        end
        @mix = mix.join(" ")
        return @mix
    end

    def warp(word)
        if word[0] == "."
            word = " "+word
        end 
        if word[0].downcase.count("aeiou") == 1
            return word+"way"
        elsif word[0..1] == "th" || word[0..1] == "sk" || word[0..1] == "wh" || word[0..1] == "pr" || word[0..1] == "pl"
            return word[2..-1] + word[0..1] + "ay"
        elsif word[0..2].downcase == "str" ||  word[0..2].downcase == "spr"
            return word[3..-1] + word[0..2] + "ay"
        else
            return word[1..-1] + word[0] + "ay"
        end
    end
end