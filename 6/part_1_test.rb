# frozen_string_literal: true

require 'minitest/autorun'

require './part_1'

# nice top-level documentation
class Part1Test < Minitest::Test
  def test_4_digit_precision
    assert_equal(0.3862770323362088, calculate(0.0001), 'dropped on calculating with 10^-4')
  end

  def test_3_digit_precision
    assert_equal(0.3861210639080839, calculate(0.001), 'dropped on calculating with 10^-3')
  end
end
