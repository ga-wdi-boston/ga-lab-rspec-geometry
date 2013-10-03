require 'spec_helper'
require_relative '../lib/geometry'

describe Geometry::Triangle do

  let(:sideA) { 3 }
  let(:sideB) { 4 }
  let(:sideC) { 5 }

  subject { Geometry::Triangle.new(sideA, sideB, sideC) }

  its(:sideA) { should eq 3.0 }
  its(:sideB) { should eq 4.0 }
  its(:sideC) { should eq 5.0 }
  
  its(:perimeter) { should eq 12.0 }
  # same as above
  # it "should have a perimeter" do
  #   subject.perimeter.should eq perimeter
  # end
  its(:area) { should eq 6.0 }
  # same as above
  # it "should have an area" do
  #   subject.area.should eq 6.0
  # end
  its(:angles) { should eq [30, 60, 90] }

  it "should be valid" do 
    ex1 = Geometry::Triangle.new(20, 27, 38)
    ex2 = Geometry::Triangle.new(4, 20, 23)
    ex3 = Geometry::Triangle.new(2.1, 2, 4)
    ex1.valid?.should be_true
    ex2.valid?.should be_true
    ex3.valid?.should be_true
  end

  it "should not be valid" do
    ex1 = Geometry::Triangle.new(14, 23, 38)
    ex2 = Geometry::Triangle.new(3, 7, 23)
    ex3 = Geometry::Triangle.new(1, 2, 3)
    ex1.valid?.should be_false
    ex2.valid?.should be_false
    ex3.valid?.should be_false
  end
end

describe Geometry::Rectangle do
  let(:length) { 10 }
  let(:width) { 12.5 }

  subject { Geometry::Rectangle.new(length, width) }

  its(:length) { should eq 10.0 }
  its(:width) { should eq 12.5 }
  its(:perimeter) { should eq 22.5 }
  its(:area) { should eq 125.0 }
end

describe Geometry::Circle do 
end