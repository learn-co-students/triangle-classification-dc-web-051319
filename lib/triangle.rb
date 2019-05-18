class Triangle

  attr_reader :length, :width, :height
  
  def initialize(length, width, height)
      @length = length
      @width = width
      @height = height
  end

  def triangle?
    test_sides = self.length <= 0 || self.width <= 0 || self.height <= 0
    triangle_inequality = self.length + self.width <= self.height || self.length + self.height <= self.width || self.height + self.width <= self.length
    puts test_sides || triangle_inequality
    test_sides || triangle_inequality
  end

  def kind
    if self.triangle?
      raise TriangleError
    else
      sides = [self.width, self.height, self.length]
      unique_sides = sides.uniq
      count = sides.count - unique_sides.count

      if count == 0
        :scalene
      elsif count == 1
        :isosceles
      else
        :equilateral
      end
    end
  end
    

  class TriangleError < StandardError
  end

end
