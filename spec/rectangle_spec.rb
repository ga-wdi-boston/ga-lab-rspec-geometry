require 'spec_helper'
require_relative '../lib/rectangle'

describe Geometry::Rectangle do
  describe '#perimeter' do
    it 'adds the lengths of sides' do
      rectangle = Geometry::Rectangle.new(12,15)
      expect(rectangle.perimeter).to eq 54
    end
  end
end