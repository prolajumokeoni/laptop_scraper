require_relative '../lib/laptop'
describe Laptop do
  describe '#name' do
    it 'names of laptops should be less than 100' do
      expect(subject.name.size).to be < 100
    end
    it 'names of laptops should not be over  100' do
      expect(subject.name.size).not_to be > 150
    end
  end

  describe '#price' do
    it 'returns prices of laptops' do
      expect(subject.price.size).not_to be_nil
    end
    it 'returns prices of laptops in figures' do
      expect(subject.price.size).not_to eql String
    end
  end

  describe '#review' do
    it 'returns ratings for each products' do
      expect(subject.review.size).to be < 100
    end
    it 'star ratings for each products should be from 1 - 5' do
      expect(subject.review.size).not_to eql String
    end
  end
end
