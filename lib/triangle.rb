class Triangle
    attr_reader :a, :b, :c

    def initialize(a, b, c)
        @a = a
        @b = b
        @c = c
    end

    def kind
        sides = [self.a, self.b, self.c]
        sorted = sides.sort
        hypotenuse = sorted.pop

        case 
        when sides.select{ |side| side > 0 }.length == 0 
            #begin 
                raise TriangleError
            #rescue TriangleError => error
                #puts error.message_zero
            #end
        when hypotenuse >= sorted.sum 
            #begin 
                raise TriangleError
            #rescue TriangleError => error
                #puts error.message_inequ
            #end
        when sides.uniq.length == 1
            return :equilateral
        when sides.uniq.length == 2
            return :isosceles
        else
            return :scalene
        end
    end

    class TriangleError < StandardError
        def message_zero
            "Side lengths must be non-zero and greater than 0."
        end

        def message_inequ
            "Invalid Triangle. Breaks Triangle Inequality"
        end

    end
end
