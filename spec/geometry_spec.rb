require 'spec_helper'
require_relative '../lib/geometry'


describe Geometry::Triangle do   
	let(:a) {3}                        #here we are defining variables 
	let(:b) {4}
	let(:c) {5}
	let(:good_perimeter) {12}
	let (:good_area) {6}
	let (:validity) {true}

subject {Geometry::Triangle.new(a,b,c)}

	it "should be an instance of geometry Triangle" do 
		subject.should be_an_instance_of Geometry::Triangle     #be_an_instance of is an rspec matcher
	end 

	it "should have a side 'a' equal to 3" do 
		subject.a.should eq 3 
	end 

	#its(:a){should eq 3} --> this is a shortcut for whats above 

	it "should have a side 'b' equal to 3" do 
		subject.b.should eq 4 
		end 

	it "should have a side 'c' equal to 3" do 
		subject.c.should eq 5 
		end 

	it "should have a perimeter" do
	subject.perimeter.should eq 12 
		end 

	it "should have an area" do
	subject.area.should eq 6 
		end 
end 

#TESTING FOR RECTANGLE

describe Geometry::Rectangle do   
	let(:a) {5}                                       #here we are defining variables 
	let(:b) {7}
	let(:good_perimeter) {24}
	let (:good_area) {35}

subject {Geometry::Rectangle.new(a,b)}

	it "should be an instance of geometry Rectangle" do 
		subject.should be_an_instance_of Geometry::Rectangle 
			end

	it "should have a side 'a' equal to 5" do 
		subject.a.should eq 5 
			end 

	#its(:a){should eq 3} --> this is a shortcut for whats above 

	it "should have a side 'b' equal to 7" do 
		subject.b.should eq 7
			end 

	it "should have a perimeter" do
	subject.perimeter.should eq 24
			end 

	it "should have an area" do
	subject.area.should eq 35
			end 
end 


# describe Geometry::Rectangle do
# 	let(:a) {5}
# 	let(:b) {7}
# 	let(:perimeter) {24}
# 	let (:area) {35}

# #testing out attr_accessor
# #call a method named a on the subject 
# 	its(:a) {should eq 5}
# 	its(:b) {should eq 7}
# 	its(:perimeter) {should eq 24}
# 	its(:area) {should eq 35}

# subject {Geometry::Rectangle.new(a,b)}

# 	it "should have a perimeter" do
# 	subject.perimeter.should eq perimeter 
# 		end 

# 	it "should have an area" do
# 	subject.area.should eq area 
# 		end 
# end 

# ##############################TESTING FOR CIRCLE###########
# describe Geometry::Circle do
# 	let(:a) {5}
# 	let(:area) {78.5398 }
# 	let(:circumference) {31.41592653589793}

# 	its(:a) {should eq 5}
# 	its(:circumference) {should eq 31.41592653589793}
# 	its (:area) {should eq 78.5398}


# subject {Geometry::Circle.new(a)}

# 	it "should have an area" do
# 	subject.area.should eq area 
# 		end 

# 	it "should have a circumference" do
# 	subject.circumference.should eq circumference 
# 		end 
# end


