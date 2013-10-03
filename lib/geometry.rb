require 'pry'

module Geometry

  class Triangle
    def perimeter(@sideA, @sideB, @sideC)
      @sideA + @sideB + @sideC
    end

    def area

    end

    def angles
    
    end

    def valid
      if (@sideA + @sideB > @sideC) && (@sideA + @sideC > @sideB) && (@sideB + @sideC > @sideA)
        return true
      else
        return false
    end