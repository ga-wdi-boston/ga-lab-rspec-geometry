require 'spec_helper'
require_relative '../lib/geometry'

describe Geometry::Triangle do
	let(:a) {3}
	let(:b) {4}
	let(:c) {5}
	let(:perimeter) {12}
	let (:area) {6}

#testing out attr_accessor
#call a method named a on the subject 
	its(:a) {should eq 3}
	its(:b) {should eq 4}
	its(:c) {should eq 5}
	its(:perimeter) {should eq 12}
	its(:area) {should eq 6}

subject {Geometry::Triangle.new(a,b,c)}

#same as above 
	it "should have a perimeter" do
	subject.perimeter.should eq perimeter 
		end 

	it "should have an area" do
	subject.area.should eq area 
		end 

end 








# it "should have an perimeter" do
# 	subject.perimeter.should eq perimeter
# end 

#same as above 
#it "should have a perimeter" do
#subject.perimeter.should eq perimeter 
#end 

# 	it "should have an area" do
# 		subject.area.should eq 6
# 	end 

# #nested test 
# describe "Another triangle" do
# 		subject {Geometry:Triangle.new(a,b,c)}
#   end 
# end

# describe Geometry::Rectangle do
# 	let(:e) {5}
# 	let(:f) {7}
# 	let(:rec_perimeter) {24}
# 	let (:rec_area) {35}

# 	subject {Geometry::Rectangle.new(e,f)}
	
# 	it "should have an perimeter" do
# 		subject.rec_perimeter.should eq rec_perimeter
# 	end 

# 	its(:e) {should eq 5}
# 	its(:f) {should eq 7}

# 	its(:rec_perimeter) {should eq 35}

# 	it "should have an area" do
# 		subject.rec_area.should eq 35
# 	end 

# describe "Another rectangle" do
# 		subject {Geometry:Rectangle.new(e,f)}
#   end 
#  end

