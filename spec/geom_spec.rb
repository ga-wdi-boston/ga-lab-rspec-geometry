require 'spec_helper'
require_relative '../lib/geom'

describe Geometry::Triangle do
  let (:a) { 3}
  let (:b) { 4}
  let (:c) { 5}
  subject { Geometry::Triangle.new(a, b, c) }

  its(:perimeter) { should eq 12}
  its(:area) { should eq 6.0}
  its (:angles) { should include(36.87, 53.13, 90.0)}
  its(:valid?) { should be true}
end

describe Geometry::Circle do
  let (:radius) { 5}
  subject { Geometry::Circle.new(radius) }

  its(:area) { should eq 78.54}
  its(:circumfrence) { should eq 31.42}
end

describe Geometry::Rectangle do
  let (:length) { 3}
  let (:width) { 5}
  subject { Geometry::Rectangle.new(length, width)}

  its (:perimeter) { should eq 16}
  its (:area) { should eq 15}
end