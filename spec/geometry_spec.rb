require 'spec_helper'
require_relative '../lib/geometry'


describe Geometry::Triangle, "#perimeter" do
  it "should have a method called perimeter" do
    should respond_to :perimeter
  end
end

describe Geometry::Triangle, "#area" do
  it "should have a method called area" do
    should respond_to :area
  end
end


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