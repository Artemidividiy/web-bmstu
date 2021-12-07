# frozen_string_literal: true

require 'minitest/autorun'
require './part_2'

# tests for part 2
class Test < MiniTest::Test
  def test_dot_to_s
    10.times do
      data_first = generate_random
      data_second = generate_random
      dot = Dot.new(data_first, data_second)
      assert_equal(dot.to_s, "x: #{data_first} \ny: #{data_second}",
                   "got #{data_first}, #{data_second}\n#{dot} received")
    end
  end

  def test_circle_to_s
    10.times do
      data_first = generate_random
      data_second = generate_random
      circle = Circle.new(Dot.new(data_first, data_second), generate_random)
      assert_equal(circle.to_s, "center: \n#{circle.center} \nradius: #{circle.radius}",
                   "got #{data_first}, #{data_second},\n#{circle} received")
    end
  end

  def generate_random
    num_first = rand(10).to_f
    num_second = rand(10).to_f
    num_first / num_second
  end
end
