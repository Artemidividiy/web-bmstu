# frozen_string_literal: true

require 'minitest/autorun'
require './part_1'

DIR = './test_texts/'
F_TEXT = "#{DIR}F.txt"
G_TEXT = "#{DIR}G.txt"
CHARS = %w[a b c d A B C D].freeze

# testing execution
class Test < MiniTest::Test
  def generate_random
    res = []
    10.times { res << CHARS.sample(rand(10)).join.to_s + "\n" }
    res
  end

  def test_parse_f
    list = generate_random
    write_f(F_TEXT, list.join)
    parse_f(DIR)
    assert_equal(File.open(F_TEXT).readlines.to_s.downcase, File.open(G_TEXT).readlines.to_s,
                 'parse_f not working correctly')
    File.delete(F_TEXT, G_TEXT)
  end

  def test_execute
    10.times do
      list = generate_random
      execute(DIR, list.join)
      assert_equal(File.open(F_TEXT).readlines.to_s.downcase, File.open(G_TEXT).readlines.to_s,
                   'it doesn\'t look normally')
      File.delete(F_TEXT, G_TEXT)
    end
  end
end
