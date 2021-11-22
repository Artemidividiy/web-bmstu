# frozen_string_literal: true

# Класс вычисления значения заданной функции
class Solution
  def initialize; end

  def sentence(_x_value, _z_value, _r_value)
    @result = Math.sin(_x_value + Math::PI * _z_value) / Math.cos(_x_value / _r_value)
    @result
  rescue StandardError => e
    puts e
    'Cannot divide by zero'
  end
end
