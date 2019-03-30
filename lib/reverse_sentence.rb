# A method to reverse the words in a sentence, in place.
# Time complexity: O(n), where n is the length of a sentence.
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  return false if my_sentence == nil || my_sentence.length == 0
  word_start = 0
  word_end = 0
  i = 0
  new_sentence = ""
 
  while i < my_sentence.length
    while i < my_sentence.length && my_sentence[i] == " "
      new_sentence = my_sentence[i] + new_sentence
      i += 1
    end
    word_start = i

    while i < my_sentence.length && my_sentence[i] != " "
      i += 1
    end
    word_end = i - 1

    while word_start <= word_end
      new_sentence = my_sentence[word_end] + new_sentence
      word_end -= 1
    end
  end
  j = 0
  while j < my_sentence.length
    my_sentence[j] = new_sentence[j]
    j += 1
  end
  return my_sentence
end
