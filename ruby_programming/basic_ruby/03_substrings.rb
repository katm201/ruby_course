
def substrings (string, dictionary)
  results = {}
  string.downcase.scan(/\w/).each_with_index do |start_letter, start_index|
    string.downcase.scan(/\w/).each_with_index do |end_letter, end_index|
      word = string[start_index..end_index]
      if start_index < end_index && dictionary.include?(word)
        results[word] ? results[word] += 1 : results[word] = 1
      end
    end
  end
  return results
end

dictionary = dictionary = ['below', 'down', 'go', 'going', 'horn', 'how', 'howdy', 'it', 'i', 'low', 'own', 'part', 'partner', 'sit']
puts substrings('below', dictionary).inspect;
