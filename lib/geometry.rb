require 'pry'
module Geometry

  class Triangle
    attr_accessor :sideA, :sideB, :sideC

    def initialize(sideA, sideB, sideC)
      @sideA = sideA
      @sideB = sideB
      @sideC = sideC
    end

    def perimeter
      @sideA + @sideB + @sideC
    end

    def area
      perim = ((@sideA + @sideB + @sideC)/2).to_f
      num_to_sqrt = perim * (perim - @sideA) * (perim - @sideB) * (perim - @sideC)
      Math.sqrt(num_to_sqrt)
    end

    def angles
      # [Math.acos(Math.cos(@sideA)), Math.acos(Math.cos(@sideB)), Math.acos(Math.cos(@sideC))]
      [Math.cos(((@sideB ** 2) + (@sideC ** 2) - (@sideA ** 2))/(2 * @sideB * @sideC)), Math.cos(((@sideA ** 2) + (@sideC ** 2) - (@sideB ** 2))/(2 * @sideA * @sideC)), Math.cos(((@sideA ** 2) + (@sideB ** 2) - (@sideC ** 2))/(2 * @sideA * @sideB))]
    end

    def valid
      if (@sideA + @sideB > @sideC) && (@sideA + @sideC > @sideB) && (@sideB + @sideC > @sideA)
        return true
      else
        return false
      end
    end
  end
end

tri = Geometry::Triangle.new(4, 5, 6)

# binding.pry