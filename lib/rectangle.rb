module Geometry
  class Rectangle
    def initialize(length, width)
      # Multiple assignment! We can put several variables on the left side and
      # an equal number on the right side, separated by commas, and they will
      # be assigned in order.
      @length, @width = length, width
    end

    def perimeter
      # Note: Ruby respects order of operations to some extent, so parentheses
      # are not needed here. But they are useful for clarifying larger formulas.
      @length * 2 + @width * 2
    end

    def area
      @length * @width
    end
  end
end
