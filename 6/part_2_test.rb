# frozen_string_literal: true

require 'minitest/autorun'

require './part_2'

# nice top-level documentation
class Part1Test < Minitest::Test
  def setup
    @solution = Solution.new
  end

  def test_4_digit_precision
    assert_equal(0.38627703233620997, @solution.calculate(0.0001), 'dropped on calculating with 10^-4')
  end

  def test_3_digit_precision
    assert_equal(0.38612106390808415, @solution.calculate(0.001), 'dropped on calculating with 10^-3')
  end
end
