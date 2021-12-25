# frozen_string_literal: true

require 'minitest/autorun'
require './part_1'

DIR = './texts/'
CHARS = ('a'..'Z').to_a

# testing execution
class Test < MiniTest::Test
  def generate_random
    CHARS.sample(rand(10)).join.to_s
  end

  def create_files
    exec("touch #{DIR}F.txt") unless "#{DIR}F.txt"
    exec("touch #{DIR}G.txt") unless "#{DIR}G.txt"
  end

  def delete_files
    exec("sudo rm #{DIR}F.txt")
    exec("sudo rm #{DIR}G.txt")
  end

  def test_write_f
    # create_files
    list = []
    10.times do
      list << generate_random.to_s
    end
    write_f("#{DIR}F.txt", list.to_s)
    assert_equal(true, File.open("#{DIR}F.txt").readlines.empty?, 'idk')
  end

  def test_parse_f
    list = ['ASDKAalsd', 'asaKaskd']
    write_f("#{DIR}F.txt", list.to_s)
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
