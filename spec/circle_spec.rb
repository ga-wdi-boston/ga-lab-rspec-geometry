require 'spec_helper'
require_relative '../lib/circle'

describe Geometry::Circle do
  describe '#circumference' do
    it 'returns the circumference of the circle' do
      first_circle = Geometry::Circle.new(5)
      second_circle = Geometry::Circle.new(47)

      # Turns out there's a matcher that doesn't force you to get all the
      # decimal places exactly right! Exercise: How could we apply this to
      # our Triangle spec?
      expect(first_circle.circumference).to be_within(0.001).of(31.415)
      expect(second_circle.circumference).to be_within(0.001).of(295.309)
    end
  end

  describe '#area' do
    it 'returns the area of the circle' do
      first_circle = Geometry::Circle.new(8)
      second_circle = Geometry::Circle.new(33)

      expect(first_circle.area).to be_within(0.001).of(201.061)
      expect(second_circle.area).to be_within(0.001).of(3421.194)
    end
  end
end
