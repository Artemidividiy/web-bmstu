# frozen_string_literal: true

require 'minitest/autorun'
require './part_2'

# Тестирование класса Solution
class TestSolution < Minitest::Test
  def setup
    @solution = Solution.new
  end

  def default_test1
    assert_equal(@solution.decrypt(50.times.map do
                                     (0...(rand(10))).map do
                                       ('a'..'z').to_a[rand(26)]
                                     end.join
                                   end.join(' '), 1), @solution.decrypt(50.times.map do
                                                                          (0...(rand(10))).map do
                                                                            ('a'..'z').to_a[rand(26)]
                                                                          end.join
                                                                        end.join(' '), 1), 'wa')
  end

  def test_two
    assert_equal('MN O', @solution.decrypt('NO P', -1), 'wa')
  end
end
