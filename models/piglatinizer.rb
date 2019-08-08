require 'pry'
require_relative '../config/environment.rb'

 class PigLatinizer

    def initialize(a_string)
        @a_string=a_string.downcase
    end

    def piglatinize
        arr= @a_string.split(/([aeiou])/)
        
        if arr[0]==""
            return "#{@a_string}ay"
        else
            arr2= arr.shift
            final= arr[1..]<< arr2[0] <<"ay"
            final_pig_latin = final.join("")

        end
    end

 end

