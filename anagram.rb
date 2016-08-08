class Anagram
  def initialize(reference_word)
    @reference_word = reference_word
  end

  def match(possible_anagrams)
    anagrams = []
    reference_word_alpha = alphabetize_word(@reference_word)
    possible_anagrams.each do |word|
      chars_match = reference_word_alpha
                    .eql?(alphabetize_word(word))
      if chars_match && !@reference_word.eql?(word.downcase)
        anagrams << word
      end
    end

    anagrams
  end

  def alphabetize_word(word)
    word.downcase.chars.sort.join
  end
end
