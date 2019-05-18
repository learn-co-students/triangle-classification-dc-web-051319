class Triangle
  # write code here
  attr_reader :side1,:side2,:side3

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if self.valid?(self.side1,self.side2,self.side3) && self.valid?(self.side2,self.side3,self.side1) && self.valid?(self.side1,self.side3,self.side2) && self.side1 >0 && self.side2>0 && self.side3 >0
      if self.side1 == self.side2 && self.side1 == self.side3 && self.side2 == self.side3
        :equilateral
      elsif self.side2 == self.side3 || self.side1 == self.side3 || self.side1 == self.side2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

    def valid?(side_a,side_b,side_c)
      side_a + side_b > side_c ? true : false
    end

  class TriangleError < StandardError
  end

  end
