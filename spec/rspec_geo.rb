require_relative 'spec_helper'
require '../lib/geometry'

describe Triangle, "#perimeter" do
  it "should have a method called perimeter" do
    should respond_to :perimeter
  end

