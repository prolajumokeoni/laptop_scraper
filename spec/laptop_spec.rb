require_relative '../lib/laptop'
describe Laptop do
  describe '#name' do
    it 'names of laptops should be less than 50' do
      expect(subject.name.size).to be < 50
    end
  end

  describe '#price' do
    it 'returns prices of laptops' do
      expect(subject.price.size).not_to be_nil
    end
  end

  describe '#review' do
    it 'returns ratings for each products' do
      expect(subject.review.size).to be < 50
    end
  end
end
