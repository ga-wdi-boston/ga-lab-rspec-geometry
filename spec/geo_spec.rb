require 'spec_helper'
require_relative '../lib/geometry'

# Triangle: perimeter, area, valid?, angles(opt)
# Circle: perimeter, area
# Rectangle: perimeter, area

describe Geometry::Triangle do
  let(:a) { 3 }
  let(:b) { 4 }
  let(:c) { 6 }
  let(:perimeter) { 13 }
  let(:area) { 5.332682251925386 }

  subject {Geometry::Triangle.new(a, b, c)}

  its(:a) { should eq 3 }
  its(:b) { should eq 4 }
  its(:c) { should eq 6 }
  its(:perimeter) {should eq perimeter}  
  its(:area) {should eq area}
  its(:valid?) {should eq true}
end

describe Geometry::Circle do
  let(:r) { 9 }
  let(:area) { 254.46900494077323 }
  let(:perimeter) { 56.548667764616276 }

  subject {Geometry::Circle.new(r)}

  its(:r) { should eq 9 }
  its(:area) { should eq area }
end

describe Geometry::Rectangle do
  let(:l) { 9 }
  let(:w) { 3 }
  let(:perimeter) { 24 }
  let(:area) { 27 }

  subject {Geometry::Rectangle.new(l, w)}
    its(:l) { should eq 9 }
    its(:w) { should eq 3 } 
    its(:perimeter) { should eq perimeter }
    its(:area) { should eq area }
end


# The below are more complex syntax for the same operations performed above. 
  # it "should have an area" do
  #   subject.area.should eq 0.0
  # end


  # it "should have a perimeter" do
  #   subject.perimeter.should eq perimeter
  # end