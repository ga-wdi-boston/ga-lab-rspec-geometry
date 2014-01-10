require 'spec_helper'
require_relative '../lib/Triangle'

describe Geometry::Triangle do
  describe '#perimeter' do
    it 'adds the lengths of sides' do
      triangle = Geometry::Triangle.new(3,4,5)
      expect(triangle.perimeter).to eq 12
    end
  end
end