class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    confirm_triangle
    #euilateral: else: 3 equal sides : check to see if side 1 = side 2, if side 2 = side 3
    #isosceles: elsif: 2 equal sides : if side 1 = side 2or if side 1 = side 3 or if side 2 = side 3
    #scalene: else: no equal sides
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def confirm_triangle
    triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      triangle << false if side <= 0 
    raise TriangleError if triangle.include?(false)
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end 
