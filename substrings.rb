def substrings(phrase, dictionary)
  dc_phrase = phrase.downcase
  dictionary.reduce(Hash.new(0)) do |result, substring|
    result[substring] = dc_phrase.scan(substring).length if dc_phrase.include?(substring)
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)