require 'spec_helper'
require_relative '../geom'

describe '#circumfrence' do
  it 'should have a method called perimeter' do
    expect(method(:circumfrence))
  end

  it 'should have an argument called radius' do
    params = method(:circumfrence).parameters
    expect(parameters[0]).to include(:radius)
  end

  it 'should return the circumfrence' do
    expect(circumfrence(2)).to eq 18.84
  end
end

describe '#area' do
  it 'should have a method called area' do
    expect(method(:area))
  end

  it 'should have an argument called radius' do
    params = method(:area).parameters
    expect(parameters[0]).to include(:radius)
  end

  it 'should return the area' do
    expect(circumfrence(2)).to eq 12.56
  end
end

