require_relative 'cat3'

describe Cat do
  context "#name" do
    it 'returns the name of the cat' do
      cat = Cat.new 'Garfield'

      expect(cat.name).to eq 'Garfield'
    end

    it 'has a configurable name' do
      cat = Cat.new 'XPTO'

      expect(cat.name).to eq 'XPTO'
    end
  end
end
