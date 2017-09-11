require('rspec')
require('pry')
require('shipping')

  describe('Parcel#volume') do
    my_package = Parcel.new(5,6,8,4)
    it("returns the product of it's dimensions") do
      expect(my_package.volume).to eq(240)
    end
  end
  describe('Parcel#cost_to_ship') do
    my_package = Parcel.new(3,4,4,12)
    my_package.volume
    it("returns equilateral if all sides are equal") do
      expect(my_package.cost_to_ship(0.5,1.5)).to eq(12)
    end
end
