require 'pry'

class Anagram

    attr_reader :word

    def initialize(word)
        @word = word
    end

    def match potential_anagrams
        sorted_array_of_letters = self.word.chars.sort
        sorted_array_of_potential_anagrams = potential_anagrams.map { |anagram| anagram.chars.sort }
        checking_for_matches = sorted_array_of_potential_anagrams.filter { |anagram| anagram == sorted_array_of_letters }
        if checking_for_matches == []
            return []
        else
            these_match = []
            checking_for_matches.map { |anagram| anagram.join }
            potential_anagrams.filter do |anagram|
                if checking_for_matches.include?(anagram.chars.sort)
                    these_match << anagram
                end
            end
        end
    end

end

hello = Anagram.new("hello")
# binding.pry
