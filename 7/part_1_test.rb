# frozen_string_literal: true

require 'minitest/autorun'
require './part_1'

DIR = './texts/'
CHARS = ['a', 'b', 'c', 'd', 'A', 'B', 'C', 'D']

# testing execution
class Test < MiniTest::Test
  def generate_random
    res = []
    10.times do
      res << CHARS.sample(rand(10)).join.to_s
      res << "\n"
    end
    return res
  end

  def test_write_f
    list = generate_random
    write_f("#{DIR}F.txt", list.join)
    assert_equal(false, File.open("#{DIR}F.txt").readlines.empty?, 'idk')
  end

  def test_parse_f
    list = generate_random
    write_f("#{DIR}F.txt", list.join)
    parse_f(DIR)
    assert_equal(File.open("#{DIR}/F.txt").readlines.to_s.downcase, File.open("#{DIR}/G.txt").readlines.to_s,
                 'parse_f not working correctly')
  end

  # def test_execute
  #   lines = []
  #   20.times do
  #     lines << generate_random
  #   end
  #   execute(DIR.to_s)
  #   assert_equal(File.read("#{DIR}/G.txt"), File.read("#{DIR}/F.txt").downcase, 'not equal')
  # end

  # def test_open_f
  #   system("rm #{DIR}F.txt") # избавимся от файла, чтобы получить ошибку
  #   assert_equal('Problem occured, while reading the file', open_f("#{DIR}F.txt"), "didn't caught the exception")
  # end
end
