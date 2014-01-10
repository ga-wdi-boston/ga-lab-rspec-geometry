module Geometry
  class Circle

    def initialize(radius)
      @radius = radius
    end

    def circumference
      2 * 3.14 * @radius
    end

    def area
      3.14 * (@radius * @radius)
    end

  end
end