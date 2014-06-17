# describe how we want a rectangle to behave
require_relative '../lib/rectangle.rb'

describe Rectangle do
  describe '#initialize' do
    it 'accepts a length and width' do
      rectangle = Rectangle.new(6, 4)

      expect(rectangle.length).to eq 6
      expect(rectangle.width).to(eq (4)) # eq is a matcher method
    end
  end

  describe '#area' do
    it 'calculates the area' do
      rectangle = Rectangle.new(10, 2)

      expect(rectangle.area).to eq 20
    end
  end

  describe '#perimeter' do
    it 'calculates the perimeter' do
      rectangle = Rectangle.new(3, 4)

      expect(rectangle.perimeter).to eq 14
    end
  end


end
