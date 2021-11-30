# frozen_string_literal: true

# класс точки
class Dot
  attr_accessor :x_coordinate, :y_coordinate

  def initialize(x_value, y_value)
    @x_coordinate = x_value
    @y_coordinate = y_value
  end

  def to_s
    "x: #{x_coordinate} \ny: #{y_coordinate}"
  end
end

# класс окружности
class Circle < Dot
  attr_accessor :center, :radius

  def initialize(center, radius)
    super
    @center = center
    @radius = radius
  end

  def to_s
    "center: \n#{center} \nradius: #{radius}"
  end
end
