class Triangle
  attr_accessor :side_k, :side_l, :side_m
  def initialize (side_k,side_l,side_m)
    @side_k = side_k
    @side_l = side_l
    @side_m = side_m
  end

  def kind
    sum1 = side_k + side_l
    sum2 = side_k + side_m
    sum3 = side_l + side_m
     if (self.side_k <= 0 || self.side_l <= 0 || self.side_m <= 0 || sum1 <= self.side_m || sum2 <= self.side_l|| sum3 <= self.side_k)
        raise TriangleError
   
     elsif(self.side_k ==self.side_l && self.side_l == self.side_m && self.side_k != 0)
      return :equilateral
      elsif(self.side_k == self.side_l || self.side_k == self.side_m || self.side_l == self.side_m)
        return :isosceles
      else 
        return :scalene
      end
  end 
  class TriangleError < StandardError
  end
end
