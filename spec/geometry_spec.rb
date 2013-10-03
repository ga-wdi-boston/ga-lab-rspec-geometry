require 'spec_helper'
require_relative '../lib/geometry'

describe Geometry::Triangle do
	let(:a) {3}
	let(:b) {4}
	let(:c) {5}
	let(:tri_perimeter) {12}
	let (:area) {6}

	subject {Geometry::Triangle.new(a,b,c)}
	
	it "should have an perimeter" do
		subject.tri_perimeter.should eq tri_perimeter
	end 

#testing out attr_accessor
#call a method named a on the subject 
its(:a) {should eq 3}
its(:b) {should eq 4}
its(:c) {should eq 5}

its(:tri_perimeter) {should eq 12}

#same as above 
#it "should have a perimeter" do
#subject.perimeter.should eq perimeter 
#end 

	it "should have an area" do
		subject.tri_area.should eq 6 
	end 

#nested test 
describe "Another triangle" do
		subject {Geometry:Triangle.new(a,b,c)}
  end 
end

describe Geometry::Rectangle do
	let(:e) {5}
	let(:f) {7}
	let(:rec_perimeter) {24}
	let (:area) {35}

	subject {Geometry::Rectangle.new(a,b)}
	
	it "should have an perimeter" do
		subject.rec_perimeter.should eq rec_perimeter
	end 

	it "should have an area" do
		subject.rec_area.should eq 12
	end 

describe "Another rectangle" do
		subject {Geometry:Rectangle.new(e,f)}
  end 
 end

###############


# describe Geometry::Triangle, "#perimeter" do
# 	let(:triangle) { Geometry::Triangle.new(3, 2, 2)}
#   it "should have a method called perimeter" do
#     triangle.should respond_to(:perimeter)
#   end





# end

# describe Geometry