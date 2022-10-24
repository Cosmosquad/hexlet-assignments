# frozen_string_literal: true

# BEGIN
def anagramm_filter(main_word, words_array)
  sorted_main_word_chars = main_word.chars.sort
  words_array.select { |word| word.chars.sort == sorted_main_word_chars }
end
# END
