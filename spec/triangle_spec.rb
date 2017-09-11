require('rspec')
require('pry')
require('triangle')

  describe('Triangle#sides') do
  tri = Triangle.new()

  it("returns equilateral if all sides are equal") do
    expect(tri.sides(2, 2, 2)).to(eq("This triangle is an Equilateral"))
  end

  it("returns scalene if scalene") do
    expect(tri.sides(4, 5, 6)).to(eq("This triangle is a Scalene"))
  end

  it("returns isosceles if two sides are equal") do
    expect(tri.sides(4, 4, 5)).to(eq("This triangle is an Isosceles"))
  end

  it("returns not a triangle if the sum of two sides is greater than its third") do
    expect(tri.sides(1, 2, 3)).to(eq("This is NOT a triangle, try again!"))
  end

end
