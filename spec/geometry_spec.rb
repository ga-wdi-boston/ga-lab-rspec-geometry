require 'spec_helper'
require_relative '../lib/geometry'


describe Geometry::Triangle do
  
  # short setting the variables for comparison
  let(:a) { 3}
  let(:b) { 4}
  let(:c) { 6}
  let(:good_perimeter) { 13}
  let(:good_area) { 5.332682251925386}
  let(:good_angles) { [3/4, 9/16, 1/8]}
  let(:good_validity) {true}
  subject { Geometry::Triangle.new(a, b, c) }
  ## checks values of the arguments passed through
  ## in our examples it is not necessary unless somebody made the variables a constant in the formula
  # its(:a) { should eq 3}
  # its(:b) { should eq 4}
  # its(:c) { should eq 6}
  
# # long way to check perimeter
#   it "should have a perimeter" do
#     subject.perimeter.should eq good_perimeter
#   end

# short way to check perimeter
  its(:perimeter) { should eq good_perimeter}
  its(:area) { should eq good_area}
  # its(:angles) {should eq good_angles}
  its(:valid?) {should eq good_validity}

  let(:a) { 2}
  let(:b) { 1}
  let(:c) { 1}
  let(:good_perimeter) { 4}
  let(:good_area) { 0}
  # let(:good_angles) { [3/4, 9/16, 1/8]}
  let(:good_validity) {false}
  subject { Geometry::Triangle.new(a, b, c) }

  its(:perimeter) { should eq good_perimeter}
  its(:area) { should eq good_area}
  its(:valid?) {should eq good_validity}

end

describe Geometry::Rectangle do
  
  # short setting the variables for comparison
  let(:length) { 3}
  let(:width) { 4}
  let(:good_perimeter) { 14}
  let(:good_area) { 12}
  subject { Geometry::Rectangle.new(length, width) }

  its(:perimeter) { should eq good_perimeter}
  its(:area) { should eq good_area}

end

describe Geometry::Circle do
  
  # short setting the variables for comparison
  let(:radius) { 3}
  let(:good_circ) { Math::PI * 6}
  subject { Geometry::Circle.new(radius) }

  its(:circ) { should eq good_circ}

end





# #### Triangle ####
# ## Method for Perimeter
# describe "#triangle" do
# it "should have a method called perimeter" do
# expect(method(:perimeter)).parameters
# end

# ## Checking for attributes
# it "should have an attribute for Side A, B, C" do
# expect(triangle(:side_a)).to eq "side_a"
# expect(triangle(:side_b)).to eq "side_b"
# expect(triangle(:side_c)).to eq "side_c"
# end

# ## Method for area
# it "should have a method called area" do
# expect(method(:area))
# end


# ## Method for Angles
# it "should have a method called angles" do
# expect(method(:angles))
# end

# #### Rectangle ####
# ## Method for Perimeter
# describe "#rectangle" do

# it "should have a method called permiter" do
# expect(method(:perimeter))
# end
# ## Checking for attributes
# it "should have an attribute for length, width" do
# expect(method(:length)).to eq "length"
# expect(method(:width)).to eq "width"
# end
# ## Method for Area
# it "should have a method called area" do
# expect(method(:area))
# end
# end

# #### Circle ####
# ## Method for Radius

# it "should have a method called radius" do
# expect(method(:perimeter))
# end
# ## Checking for attributes
# it "should have an attribute for radius" do
# expect(method(:length)).to eq "length"
# expect(method(:width)).to eq "width"
# end






