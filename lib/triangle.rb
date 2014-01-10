module Geometry # Module is a way to organize classes
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
      s = self.perimeter / 2
      Math.sqrt(s * (s - @sideA) * (s - @sideB) * (s - @sideC))
    end

    def valid?
      if ((sideA + sideB) > sideC) && ((sideB + sideC) > sideA) && ((sideA + sideC) > sideB)
        true
      else
        false
      end
    end
  end
end

