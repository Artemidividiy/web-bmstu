# frozen_string_literal: true

# Класс вычисления значения заданной функции
class Solution
  def initialize; end

  def sentence(x_value, z_value, r_value)
    Math.sin(x_value + Math::PI * z_value) / Math.cos(x_value / r_value)
  rescue StandardError => e
    puts e
    'Cannot divide by zero'
  end
end
