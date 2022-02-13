require './substrings.rb'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

RSpec.describe 'Sub String Tests: ' do
  describe 'finds substrings in a single word' do

    it 'returns substring hash of a single word' do
      hash = substrings('below', dictionary)
      result = { "below" => 1, "low" => 1 }
      expect(result).to eq(hash)
    end

    it 'returns substring hash regardless of case' do
      hash = substrings('BelOw', dictionary)
      result = { "below" => 1, "low" => 1 }
      expect(result).to eq(hash)
    end
  end


  describe 'finds substrings of a phrase' do
    it 'returns substring has of a phrase' do
      hash = substrings("Howdy partner, sit down! How's it going?", dictionary)
      result = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
      expect(result).to eq(hash)
    end
  end
end