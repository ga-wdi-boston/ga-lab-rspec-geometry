module Geometry
  class Triangle
    attr_accessor :sideA, :sideB, :sideC, :angles

    def initialize(sideA, sideB, sideC)
      @sideA = sideA.to_f
      @sideB = sideB.to_f
      @sideC = sideC.to_f
      @angles = []
    end

    def perimeter
      @sideA + @sideB + @sideC
    end

    def area
      # use Heron's formula
      s = self.perimeter / 2
      (s * (s - @sideA) * (s - @sideB) * (s - @sideC)) ** 0.5
    end

    def angles
      angleC = (@sideA ** 2 + @sideB ** 2 - @sideC ** 2) / (2 * @sideA * @sideB)
      angleC = (Math.acos(angleC)) * 180 / Math::PI
      angleB = (@sideA ** 2 + @sideC ** 2 - @sideB ** 2) / (2 * @sideA * @sideC)
      angleB = (Math.acos(angleB)) * 180 / Math::PI
      angleA = 180 - angleB - angleC
      @angles << angleA.round << angleB.round << angleC.round
    end

    def valid?
      begin
        self.angles.inject(0) { |sum, angle| sum + angle} == 180
        rescue Math::DomainError
        return false
      end
    end
  end
end
