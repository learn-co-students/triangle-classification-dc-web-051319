require 'pry'

class Triangle

  attr_reader :a, :b, :c 

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c 
  end 

  class TriangleError < StandardError

  end

  def kind
    validate_triangle  
    if a == b && b == c 
      :equilateral
    elsif a == b || b == c || a == c 
      :isosceles
    else 
      :scalene
    end

  def validate_triangle 
    true_triangle = [(a + b > c), (b + c > a), (a + c > b)]
    [a, b, c].each do |x| true_triangle << false
      if x <= 0
        binding.pry
      end 
      raise TriangleError if true_triangle.include?(false)
      end  
  end
  
end
