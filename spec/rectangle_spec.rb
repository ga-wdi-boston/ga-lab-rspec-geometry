# describe how we want a rectangle to behave
require_relative '../lib/rectangle.rb'

describe Rectangle do
  #will assign this variable to each test,  more efficient, but not necessarily more readable
  let(:rectangle) { Rectangle.new(7, 5) }

  describe 'attributes' do
    it 'accepts a length and width' do
      #rectangle = Rectangle.new(6, 4)

      expect(rectangle.length).to eq 7
      expect(rectangle.width).to(eq (5)) # eq is a matcher method
    end
  end

  describe '#area' do
    it 'calculates the area' do
      #rectangle = Rectangle.new(10, 2)

      expect(rectangle.area).to eq 35
    end
  end

  describe '#perimeter' do
    it 'calculates the perimeter' do
      #rectangle = Rectangle.new(3, 4)

      expect(rectangle.perimeter).to eq 24
    end
  end


end
