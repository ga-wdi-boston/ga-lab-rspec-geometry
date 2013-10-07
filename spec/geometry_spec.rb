require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'spec_helper'
require_relative '../lib/geometry'


describe Geometry::Triangle do
  
  let(:side_a) {3.0}
  let(:side_b) {4.0}
  let(:side_c) {6.0}
# 
  subject { Geometry::Triangle.new(side_a, side_b, side_c) }

  # call a method named a on the subject
  its(:side_a) { should eq 3.0}
  its(:side_b) { should eq 4.0}
  its(:side_c) { should eq 6.0}

  it "should have an area" do
    subject.area.should eq 5.3
  end

  it "should have a perimeter" do
    subject.perimeter.should eq 13.0
  end
  # same as above
  # its(:perimeter) { should eq 13.0}

  it "should have angles" do
    subject.angles.should eq [117.3, 36.3, 26.4]
end
  #   its(:angles) { should eq [117.3, 36.3, 26.4] }
  end

describe Geometry::Rectangle do

  let(:length) {4.0}
  let(:width)  {6.0}

  subject {Geometry::Rectangle.new(length, width)}
    it "should have an area" do
      subject.area.should eq 24.0
    end

    it "should have a perimeter" do
      subject.perimeter.should eq 20.0
    end
    #same as above
    #its(:perimeter) { should eq 20.0 }
  end

describe Geometry::Circle do
  let(:radius) {1.0}

  subject {Geometry::Circle.new(radius)}
  it "should have a area" do
    subject.area.should eq Math::PI
  end

  it "should have a circumference" do
    subject.circumference.should eq (2 * Math::PI)
  end

end



#   it "should be valid" do 
#     ex1 = Geometry::Triangle.new(20, 27, 38)
#     ex2 = Geometry::Triangle.new(4, 20, 23)
#     ex3 = Geometry::Triangle.new(2.1, 2, 4)
#     ex1.valid?.should be_true
#     ex2.valid?.should be_true
#     ex3.valid?.should be_true
#   end

#   it "should not be valid" do
#     ex1 = Geometry::Triangle.new(14, 23, 38)
#     ex2 = Geometry::Triangle.new(3, 7, 23)
#     ex3 = Geometry::Triangle.new(1, 2, 3)
#     ex1.valid?.should be_false
#     ex2.valid?.should be_false
#     ex3.valid?.should be_false
#   end
# end


