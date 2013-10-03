require 'spec_helper'
require_relative '../lib/geometry'

describe Triangle, "#perimeter" do 
  it "should have a method called perimeter" do
    should respond_to :perimeter
  end
  it "should have three required parameters" do
    parameters = method(:perimeter).parameters
    expect(parameters[0]).to include(:req)
    expect(parameters[0]).to include(:@sidea)
    expect(parameters[1]).to include(:req)
    expect(parameters[1]).to include(:@sideb)    
    expect(parameters[2]).to include(:req)
    expect(parameters[2]).to include(:@sidec)    
    expect(parameters.length).to eq 3
  end  
  it "should raise an error when anything except a positive number is passed a parameter" do
    expect{perimeter("cat")}.to raise_error(NoMethodError)
    expect{perimeter(true)}.to raise_error(NoMethodError)
    expect{perimeter([1, 2])}.to raise_error(NoMethodError)
    expect{perimeter(-2, 4, 5)}.to raise_error(NoMethodError)
  end

  it "should give back the perimeter of all 3 sides added" do
    expect(perimeter(3, 7, 5)).to eq 15
    expect(perimeter(20, 35, 40)).to eq 95
    expect(perimeter(2, 8, 9)).to eq 19
   end

end

describe Triangle, "#area" do 
  it "should have a method called area" do
    should respond_to :area
  end
  it "should have three required parameters" do
    parameters = method(:area).parameters
    expect(parameters[0]).to include(:req)
    expect(parameters[0]).to include(:@sidea)
    expect(parameters[1]).to include(:req)
    expect(parameters[1]).to include(:@sideb)    
    expect(parameters[2]).to include(:req)
    expect(parameters[2]).to include(:@sidec)    
    expect(parameters.length).to eq 3
  end 
  it "should raise an error when anything except a positive number is passed a parameter" do
    expect{area("cat")}.to raise_error(NoMethodError)
    expect{area(true)}.to raise_error(NoMethodError)
    expect{area([1, 2])}.to raise_error(NoMethodError)
    expect{area(-2, 4, 5)}.to raise_error(NoMethodError)
  end

  it "should give back the area of all 3 sides added" do
    expect(area(3, 7, 5)).to eq 6.492
    expect(area(20, 35, 40)).to eq 349.9442
    expect(area(2, 8, 9)).to eq 7.3101
   end

end

describe Triangle, "#angle" do 
  it "should have a method called angle" do
    should respond_to :angle
  end
it "should have three required parameters" do
    parameters = method(:angle).parameters
    expect(parameters[0]).to include(:req)
    expect(parameters[0]).to include(:@sidea)
    expect(parameters[1]).to include(:req)
    expect(parameters[1]).to include(:@sideb)    
    expect(parameters[2]).to include(:req)
    expect(parameters[2]).to include(:@sidec)    
    expect(parameters.length).to eq 3
  end 

  it "should raise an error when anything except a positive number is passed a parameter" do
    expect{angle("cat")}.to raise_error(NoMethodError)
    expect{angle(true)}.to raise_error(NoMethodError)
    expect{angle([1, 2])}.to raise_error(NoMethodError)
    expect{angle(-2, 4, 5)}.to raise_error(NoMethodError)
  end

  it "should give back the area of all 3 sides added" do
    expect(angle(3, 7, 5)).to eq [21.79, 38.21, 120.00]
    expect(angle(20, 35, 40)).to eq [29.99, 61.03, 88.98]
    expect(angle(2, 8, 9)).to eq [11.72, 54.31, 113.97]
   end

end

describe Triangle, "#valid?" do 
  it "should have a method called valid?" do
    should respond_to :valid?
  end
  it "should have three required parameters" do
    parameters = method(:valid?).parameters
    expect(parameters[0]).to include(:req)
    expect(parameters[0]).to include(:@sidea)
    expect(parameters[1]).to include(:req)
    expect(parameters[1]).to include(:@sideb)    
    expect(parameters[2]).to include(:req)
    expect(parameters[2]).to include(:@sidec)    
    expect(parameters.length).to eq 3
  end
  it "should raise an error when anything except a positive number is passed a parameter" do
    expect{valid?("cat")}.to raise_error(NoMethodError)
    expect{valid?(true)}.to raise_error(NoMethodError)
    expect{valid?([1, 2])}.to raise_error(NoMethodError)
    expect{valid?(-2, 4, 5)}.to raise_error(NoMethodError)
  end

  it "should evaluate to see if the give angles create a valid triangle" do
    expect(valid?(1, 5, 7)).to eq false
    expect(valid?(20, 35, 40)).to eq true
    expect(valid?(2, 8, 9)).to eq true
   end

end

describe Rectangle,  "#perimeter" do 
  it "should have a method called perimeter" do
    should respond_to :perimeter
  end
end

describe Rectangle,  "#area" do 
  it "should have a method called area" do
    should respond_to :area
  end
end

describe Circle,  "#perimeter" do 
  it "should have a method called perimeter" do
    should respond_to :perimeter
  end
end

describe Circle,  "#circumference" do 
  it "should have a method called circumference" do
    should respond_to :circumference
  end
end

#   it "should give back the(perimeterannaci sequence" do
#     expect(perimeter(1)).to eq [0]
#     expect(perimeter(2)).to eq [0, 1]
#     expect(perimeter(4)).to eq [0, 1, 1, 2]
#     expect(perimeter(7)).to eq [0, 1, 1, 2, 3, 5, 8]
#     expect(perimeter(9)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21]
#     expect(perimeter(10)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
#     expect(perimeter(39)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169]
#   end

  it "should raise an error when a non-integer is passed a parameter" do
    expect(perimeter("cat")}.to raise_error(NoMethodError)
    expect(perimeter(1.1)}.to raise_error(NoMethodError)
    expect(perimeter(true)}.to raise_error(NoMethodError)
    expect(perimeter([1, 2])}.to raise_error(NoMethodError)
  end

# end