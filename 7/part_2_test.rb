# frozen_string_literal: true

require 'minitest/autorun'
require './part_2'

# tests for part 2
class Lab7Test2 < MiniTest::Test
  def test_dot_to_s
    10.times do
      data = [generate_random, generate_random]
      d = Dot.new(data[0], data[1])
      puts "got #{data}"
      assert_equal(d.to_s, "x: #{data[0]} \ny: #{data[1]}", "got #{data}\n#{d} received")
    end
  end

  def test_circle_to_s
    10.times do
      data = [generate_random, generate_random]
      d = Dot.new(data[0], data[1])
      radius = generate_random
      puts "got #{data}\nradius: #{radius}"
      c = Circle.new(d, radius)
      assert_equal(c.to_s, "center: \n#{c.center} \nradius: #{c.radius}",
                   "got #{data}, #{radius}\n#{c} received")
    end
  end

  def generate_random
    rand(10).to_f / rand(10).to_f
  end
end
