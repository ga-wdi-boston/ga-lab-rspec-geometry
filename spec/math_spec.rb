require 'spec_helper'
require_relative '../lib/math'

### Tests from code-along with Tom ###
describe Geometry::Triangle do
  
  # set variables
  let(:side_a) {3}
  let(:side_b) {4}
  let(:side_c) {5}

  subject { Geometry::Triangle.new(side_a, side_b, side_c) }

  its(:perimeter) {should eq 12}
  its(:area) {should eq 6}
  its(:triangle_valid?) {should eq true}

end

describe Geometry::Rectangle do
  
  # set variables
  let(:l) {3}
  let(:w) {4}

  subject { Geometry::Rectangle.new(l, w) }

  its(:perimeter) {should eq 14}
  its(:area) {should eq 12}

end

describe Geometry::Circle do
  
  # set variables
  let(:r) {3}

  subject { Geometry::Circle.new(radius) }

  let(:circumference) { Math::PI * 6}
  let(:area) {Math::PI * 9}

end