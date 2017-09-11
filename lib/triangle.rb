class Triangle

  def sides(side1, side2, side3)
    if (side1 === side2) and (side2 === side3)
      return "This triangle is an Equilateral"
    elsif ((side1 === side2) or (side1 === side3) or (side3 === side2))
      return "This triangle is an Isosceles"
    elsif (((side3 + side2) <= side1) or ((side3 + side1) <= side2) or ((side1 + side2) <= side3))
      return "This is NOT a triangle, try again!"
    else
      return "This triangle is a Scalene"
    end
  end
end
