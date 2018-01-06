
def substrings (string, dictionary)
  results = {}
  string.downcase.scan(/\w/).each_with_index do |start_letter, index1|
    string.downcase.scan(/\w/).slice(index1 + 1..-1).each_with_index do |end_letter, index2|
      end_index = index1 + 1 + index2
      word = string[index1..end_index]
      if dictionary.include?(word)
        results[word] ? results[word] += 1 : results[word] = 1
      end
    end
  end
  return results
end

dictionary = dictionary = ['below', 'down', 'go', 'going', 'horn', 'how', 'howdy', 'it', 'i', 'low', 'own', 'part', 'partner', 'sit']
puts substrings('below', dictionary).inspect;
