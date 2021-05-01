require 'pry'

class Triangle
  # write code here
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def greater_than_zero
    @side_3 > 0 && @side_2 > 0 && @side_1 > 0
  end

  def kind
    if (@side_3 == @side_2 && @side_3 == @side_1) && self.greater_than_zero
      :equilateral
    elsif (@side_1 == @side_2 && (@side_1+@side_2>@side_3) || @side_2 == @side_3 && (@side_3+@side_2>@side_1)|| @side_1 == @side_3 && (@side_1+@side_3>@side_2)) && self.greater_than_zero
      :isosceles
    elsif ((@side_1+@side_2>@side_3) && (@side_3+@side_2>@side_1) && (@side_1+@side_3>@side_2)) && self.greater_than_zero
      :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError

  end
end

#binding.pry
