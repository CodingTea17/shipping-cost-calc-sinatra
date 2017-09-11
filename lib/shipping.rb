class Parcel
  attr_reader(:length,:width,:height,:weight)
  attr_accessor(:vol)
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end
  def volume
    @vol = @length * @width * @height
    @vol
  end
  def cost_to_ship(speed_mult,distance_mult)
    (speed_mult + distance_mult) * ((@vol + @weight) / 10.0)
  end
end
