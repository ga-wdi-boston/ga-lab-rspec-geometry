require 'spec_helper'
require_relative '../lib/geometry'

describe Geometry::Triangle do

  let(:a) { 3 }
  let(:b) { 4 }
  let(:c) { 5 }
  let(:perimeter) { 12 }

  subject { Geometry::Triangle.new(a, b, c) }

  

  it "should have an area" do
    subject.area.should eq 6.0
  end

  its(:a) { should eq 3 }
  its(:b) { should eq 4 }
  its(:c) { should eq 5 }
  
  its(:perimeter) { should eq 12 }
  # same as above
  # it "should have a perimeter" do
  #   subject.perimeter.should eq perimeter
  # end
end

# describe Geometry::Triangle, "#area" do
#   it "should have a method called area" do
#     should respond_to :area
#   end
# end


# describe "#Triangle" do

#   triangle = Triangle.new(rand(10), rand(10), rand(10))
  
#   it "should require three parameters" do
    
#   end

#   it "should have a method called perimeter" do
#   end

#   it "should have a method called area" do
#   end

#   it "should have a method called valid?" do
#   end
# end