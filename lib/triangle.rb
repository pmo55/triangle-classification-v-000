class Triangle
  attr_accessor :side_1, :side_2, :side_3
  def initialize(side_1, side_2, side_3)
    @side_1=side_1
    @side_2=side_2
    @side_3=side_3
end
def valid?
  if side_1 <= 0 || side <= 0 || side_3 <= 0 || side_1+ side_2 < side_3 || side_1 + side_3 < side_2 || side_2+side_3< side_1
    return false
  else return true
    
end
end
def kind
  if valid?
  if side_1==side_2 && side_2 == side_3
    return :equilateral
  elsif side_1==side_2 || side_2==side_3 || side_1==side_3
  return :isosceles
  elsif side_1 != side_2 && side_2 != side_3 && side_1 != side_3
  return :scalene
end
else
  raise TriangleError
end
end
class TriangleError < StandardError
  def message
    "Triangle is invalid"
  end
  
end
end