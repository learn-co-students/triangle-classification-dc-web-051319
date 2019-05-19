class Triangle

  attr_accessor :side1,:side2,:side3

  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def isValid
    if self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0
      return false
    elsif self.side1 + self.side2 <= self.side3 || self.side1 + self.side3 <= self.side2 || self.side3 + self.side2 <= self.side1
      return false
    else
      return true
    end
  end

  def kind
    if isValid
      if self.side1 != self.side2 && self.side1 != self.side3 && self.side2 != self.side3
        return :scalene
      elsif self.side1 == self.side2 && self.side1 == self.side3 && self.side2 == self.side3
        return :equilateral
      elsif self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
        return :isosceles
      else
        raise TriangleError
        return TriangleError.error_message
      end
    else
      raise TriangleError
      return TriangleError.error_message
    end
  
  end

  class TriangleError < StandardError
    def error_message
      "ERROR: INVALID TRIANGLE"
    end
  end

end
