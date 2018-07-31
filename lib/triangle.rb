class Triangle
  attr_accessor :side_1, :side_2, :side_3
  def initialize(side_1, side_2, side_3)
    @side_1=side_1
    @side_2=side_2
    @side_3=side_3
end
def kind
  if side_1==side_2 && side_2 == side_3
    return :equilateral
  elsif side_1==side_2 || side_2==side_3 || side_1==side_3
  return :isosceles
  elsif side_1 != side_2 && side_2 != side_3 && side_1 != side_3
  return :scalene
elsif side_1 <= 0 || side_2 <=0 || side_3 <=0  
  begin
        raise TriangleError
      rescue TriangleError=> error
          puts error.message
      end
end
end
class TriangleError < StandardError
  def message
    "Triangle is invalid"
  end
  
end
end