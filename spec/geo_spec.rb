require 'spec_helper'
require_relative '../lib/geometry'

describe Geometry,  

describe Triangle, "#perimeter" do 
  it "should have a method called perimeter" do
    should respond_to :perimeter
  end

  it "should have three required parameters named @sideA, @sideB, @sideC" do
    parameters = method(:perimeter).parameters
    expect(parameters[0]).to include(:req)
    expect(parameters[0]).to include(:@sideA)
    expect(parameters[1]).to include(:req)
    expect(parameters[1]).to include(:@sideB)
    expect(parameters[2]).to include(:req)
    expect(parameters[2]).to include(:@sideC)
    expect(parameters.length).to eq 3
  end  

  it "should raise an error when a non-positive number is passed a parameter" do
    expect{perimeter("cat")}.to raise_error(NoMethodError)
    expect{perimeter(true)}.to raise_error(NoMethodError)
    expect{perimeter([1, 2])}.to raise_error(NoMethodError)
    expect{perimeter(-1, 2, 4)}.to raise_error(NoMethodError)
  end

  it "should give back the triangle's perimeter" do
    expect(perimeter(3, 7, 5)).to eq 15
    expect(perimeter(2, 9, 8)).to eq 19
    expect(perimeter(20, 35, 40)).to eq 95
  end
end

describe Triangle, "#valid" do
  it "should be a valid traingle" do
    should repond_to :valid
  end

  it "should have three required parameters named @sideA, @sideB, @sideC" do
    parameters = method(:valid).parameters
    expect(parameters[0]).to include(:req)
    expect(parameters[0]).to include(:@sideA)
    expect(parameters[1]).to include(:req)
    expect(parameters[1]).to include(:@sideB)
    expect(parameters[2]).to include(:req)
    expect(parameters[2]).to include(:@sideC)
    expect(parameters.length).to eq 3
  end

  it "should raise an error when a non-positive number is passed a parameter" do
    expect{valid("cat")}.to raise_error(NoMethodError)
    expect{valid(true)}.to raise_error(NoMethodError)
    expect{valid([1, 2])}.to raise_error(NoMethodError)
    expect{valid(-1, 2, 4)}.to raise_error(NoMethodError)
  end

  it "should be a valid triangle" do
    expect(valid(1, 7, 5)).to eq false
    expect(valid(2, 9, 8)).to eq true
    expect(valid(20, 35, 40)).to eq true
  end
end

describe Triangle, "#area" do 
  it "should have a method called area" do
    should respond_to :area
  end

  it "should have three required parameters named @sideA, @sideB, @sideC" do
    parameters = method(:area).parameters
    expect(parameters[0]).to include(:req)
    expect(parameters[0]).to include(:@sideA)
    expect(parameters[1]).to include(:req)
    expect(parameters[1]).to include(:@sideB)
    expect(parameters[2]).to include(:req)
    expect(parameters[2]).to include(:@sideC)
    expect(parameters.length).to eq 3
  end

  it "should raise an error when a non-positive number is passed a parameter" do
    expect{area("cat")}.to raise_error(NoMethodError)
    expect{area(true)}.to raise_error(NoMethodError)
    expect{area([1, 2])}.to raise_error(NoMethodError)
    expect{area(-1, 2, 4)}.to raise_error(NoMethodError)
  end

  it "should give back the triangle's area" do
    expect(area(3, 7, 5)).to eq 6.4952
    expect(area(2, 9, 8)).to eq 7.3101
    expect(area(20, 35, 40)).to eq 349.9442
  end
end

describe Triangle, "#angles" do 
  it "should have a method called angles" do
    should respond_to :angles
  end
  it "should have three required parameters named @sideA, @sideB, @sideC" do
    parameters = method(:angles).parameters
    expect(parameters[0]).to include(:req)
    expect(parameters[0]).to include(:@sideA)
    expect(parameters[1]).to include(:req)
    expect(parameters[1]).to include(:@sideB)
    expect(parameters[2]).to include(:req)
    expect(parameters[2]).to include(:@sideC)
    expect(parameters.length).to eq 3 
  end

  it "should raise an error when a non-positive number is passed a parameter" do
    expect{angles("cat")}.to raise_error(NoMethodError)
    expect{angles(true)}.to raise_error(NoMethodError)
    expect{angles([1, 2])}.to raise_error(NoMethodError)
    expect{angles(-1, 2, 4)}.to raise_error(NoMethodError)
  end

  it "should give back the triangle's angles" do
    expect(angles(3, 7, 5)).to eq [21.79, 38.21, 120.00]
    expect(angles(2, 9, 8)).to eq [11.72, 54.31, 113.97]
    expect(angles(20, 35, 40)).to eq [29.99, 61.03, 88.98]
  end
end

describe Rectangle, "#perimeter" do 
  it "should have a method called perimeter" do
    should respond_to :perimeter
  end
end

describe Rectangle, "#area" do 
  it "should have a method called area" do
    should respond_to :area
  end
end

describe Rectangle, "#circumference" do 
  it "should have a method called circumference" do
    should respond_to :circumference
  end
end

describe Rectangle, "#area" do 
  it "should have a method called area" do
    should respond_to :area
  end
end








  
    expect(perimeter(10)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
    expect(perimeter(39)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169]
  end


end
