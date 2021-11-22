# frozen_string_literal: true

require 'minitest/autorun'
require './part_1'

# Класс тестирования класса вычислений
class TestSolution < Minitest::Test
  def setup
    @solution = Solution.new
  end

  def test_sentence_default
    assert_equal(0.8414709848078964, @solution.sentence(1, 2, 3), 'WA')
  end

  def test_sentence_on_zero
    assert_equal('Cannot divide by zero', @solution.sentence(2, 1, 0), 'uncaught exception')
  end
end
