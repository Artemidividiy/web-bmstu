# frozen_string_literal: true

require 'minitest/autorun'
require './part_2'

# Тестирование класса Solution
class TestSolution < Minitest::Test
  def setup
    @solution = Solution.new
  end

  def test_default
    key_a = rand(10)
    key_b = rand(26)
    assert_equal(@solution.decrypt(50.times.map do
                                     (0...key_a).map do
                                       ('a'..'z').to_a[key_b]
                                     end.join
                                   end.join(' '), 1), @solution.decrypt(50.times.map do
                                                                          (0...key_a).map do
                                                                            ('a'..'z').to_a[key_b]
                                                                          end.join
                                                                        end.join(' '), 1), 'wa')
  end

  def test_two
    assert_equal('MN O', @solution.decrypt('NO P', -1), 'wa')
  end
end
