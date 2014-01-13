module Geometry
  class Triangle
    def initialize(sideA, sideB, sideC)
      # Multiple assignment! We can put several variables on the left side
      # of the assignment, and an array on the right. We sort it so sideC is
      # always the longest side.
      @sideA, @sideB, @sideC = [sideA, sideB, sideC].sort
    end

    def perimeter
      @sideA + @sideB + @sideC
    end

    def area
      # When doing division, we must ensure at least one of the sides is
      # a Float and not a Fixnum, otherwise the result will be rounded.
      half_p = perimeter.to_f / 2
      Math.sqrt(half_p * (half_p - @sideA) * (half_p - @sideB) * (half_p - @sideC))
    end

    def angles
      # We put the array on multiple lines to make it easier to read.
      # Don't forget the commas!
      [
        angle_opposite_side(@sideA, @sideB, @sideC),
        angle_opposite_side(@sideB, @sideA, @sideC),
        angle_opposite_side(@sideC, @sideA, @sideB)
      ]
    end

    def valid?
      # Uses the Inequality Theorem. Note this only works if sideC is the
      # longest side, which we did by sorting the sides in the initializer.
      @sideA + @sideB > @sideC
    end

    # Everything below the "private" line is a private method and can only
    # be called from inside a Triangle object. Private methods are often used
    # by regular ("public") methods for internal calculations like this.

    private

    # Method that gets the angle opposite a target side, given the length of
    # the target side and the two other sides. Uses the Law of Cosines to get
    # the cosine of the angle, then gets the angle itself in radians using the
    # inverse cosine method `acos`, and converts that to degrees.
    # Look up the Math module to see where `acos` and `PI` are coming from.
    def angle_opposite_side(target_side, sideB, sideC)
      cosine = (sideB ** 2 + sideC ** 2 - target_side ** 2).to_f / (2 * sideB * sideC)
      Math.acos(cosine) * (180 / Math::PI)
    end
  end
end
