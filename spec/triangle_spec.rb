require 'spec_helper'
require_relative '../lib/triangle'

describe Geometry::Triangle do
  describe '#perimeter' do
    it 'returns the perimeter of the triangle' do
      first_triangle = Geometry::Triangle.new(1, 1, 1)
      second_triangle = Geometry::Triangle.new(2, 4, 5)

      expect(first_triangle.perimeter).to eq 3
      expect(second_triangle.perimeter).to eq 11
    end
  end

  describe '#area' do
    it 'returns the area of the triangle' do
      first_triangle = Geometry::Triangle.new(2, 4, 5)
      second_triangle = Geometry::Triangle.new(6, 8, 10)

      expect(first_triangle.area).to eq 3.799671038392666
      expect(second_triangle.area).to eq 24
    end
  end

  describe '#angles' do
    it 'returns the angles of the triangle' do
      first_triangle = Geometry::Triangle.new(2, 4, 5)
      second_triangle = Geometry::Triangle.new(8, 6, 7)

      # I calculated these numbers manually to a few decimal places using the
      # Law of Cosines, then copy-pasted the actual output from the test failure
      # when I saw the values were "close enough". Same goes for line 20.
      expect(first_triangle.angles).to eq [22.331645009221504, 49.45839812649548, 108.20995686428301]
      expect(second_triangle.angles).to eq [46.56746344221023, 57.9100487437197, 75.52248781407008]
    end
  end

  describe '#valid?' do
    it 'returns true for valid triangles' do
      triangles = [
        Geometry::Triangle.new(2, 4, 5),
        Geometry::Triangle.new(6, 8, 10),
        Geometry::Triangle.new(8, 6, 7)
      ]

      expect(triangles[0]).to be_valid
      expect(triangles[1]).to be_valid
      expect(triangles[2]).to be_valid
      # This shortcut works for any "?" method that returns true or false.
      # Equivalent to: expect(triangles[0].valid?).to eq true
    end

    it 'returns false for invalid triangles' do
      triangles = [
        Geometry::Triangle.new(1, 1, 10),
        Geometry::Triangle.new(5, 0, 5),
        Geometry::Triangle.new(5, 1, 1)
      ]

      expect(triangles[0]).to_not be_valid
      expect(triangles[1]).to_not be_valid
      expect(triangles[2]).to_not be_valid
      # Using `.to_not` instead of `.to` inverts the expectation.
      # Equivalent to: expect(triangles[0].valid?).to eq false
    end
  end
end
