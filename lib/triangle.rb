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
      6.25
    end
  end
end

