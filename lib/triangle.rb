module Geometry
  class Triangle

    def initialize(num1, num2, num3)
      @num1 = num1
      @num2 = num2
      @num3 = num3
    end

    def perimeter
      @num1 + @num2 + @num3
    end

    def area
      0.5 * (@num1 * @num2)
    end
  end
end