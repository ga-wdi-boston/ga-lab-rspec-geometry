# describe how we want a rectangle to behave
require_relative '../lib/rectangle.rb'

describe Rectangle do
  describe '#initialize' do
    it 'accepts a length and width' do
      rectangle = Rectangle.new(6,4)

      expect(rectangle.length).to eq 6
      expect(rectangle.width).to(eq (4)) # eq is a matcher method
    end
  end
end
