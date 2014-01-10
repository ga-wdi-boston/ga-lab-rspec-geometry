module Geometry
  class Circle
    attr_accessor :radius

    def initialize(radius)
      @radius = radius
    end

    def circumference
      (2 * Math::PI * @radius).round(4)
    end
  end
end
