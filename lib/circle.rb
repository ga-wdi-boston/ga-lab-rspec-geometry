module Geometry # Module is a way to organize classes
  class Circle
    attr_accessor :radius
    def initialize(radius)
      @radius = radius
    end

    def circumference
      @radius * 2 * Math::PI
    end

    def area_circle
      Math::PI * (@radius ** 2)
    end
  end
end
