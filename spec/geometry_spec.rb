require 'spec_helper'
require_relative '../lib/geometry'


########################TESTING FOR TRIANGLE######

describe Geometry::Triangle do
	let(:a) {3}
	let(:b) {4}
	let(:c) {5}
	let(:perimeter) {12}
	let (:area) {6}
	let (:validity) {true}

#testing out attr_accessor
#call a method named a on the subject 
	its(:a) {should eq 3}
	its(:b) {should eq 4}
	its(:c) {should eq 5}
	its(:perimeter) {should eq 12}
	its(:area) {should eq 6}
	its(:validity) {should eq true}

subject {Geometry::Triangle.new(a,b,c)}

#Another test the same as above 
	it "should have a perimeter" do
	subject.perimeter.should eq perimeter 
		end 

	it "should have an area" do
	subject.area.should eq area 
		end 
end 

#######################TESTING FOR RECTANGLE #######

describe Geometry::Rectangle do
	let(:a) {5}
	let(:b) {7}
	let(:perimeter) {24}
	let (:area) {35}

#testing out attr_accessor
#call a method named a on the subject 
	its(:a) {should eq 5}
	its(:b) {should eq 7}
	its(:perimeter) {should eq 24}
	its(:area) {should eq 35}

subject {Geometry::Rectangle.new(a,b)}

	it "should have a perimeter" do
	subject.perimeter.should eq perimeter 
		end 

	it "should have an area" do
	subject.area.should eq area 
		end 
end 

##############################TESTING FOR CIRCLE###########
describe Geometry::Circle do
	let(:a) {5}
	let(:area) {78.5398 }
	let(:circumference) {31.41592653589793}

	its(:a) {should eq 5}
	its(:circumference) {should eq 31.41592653589793}
	its (:area) {should eq 78.5398}


subject {Geometry::Circle.new(a)}

	it "should have an area" do
	subject.area.should eq area 
		end 

	it "should have a circumference" do
	subject.circumference.should eq circumference 
		end 
end


