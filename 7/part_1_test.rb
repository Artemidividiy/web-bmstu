# frozen_string_literal: true

require 'minitest/autorun'
require './part_1'

DIR = './texts/'
CHARS = ('a'..'Z').to_a

# testing execution
class Test < MiniTest::Test
  
  def generate_random
    CHARS.sample(rand(10)).join
  end

  def create_files()
    if !"#{DIR}F.txt" then 
      exec("echo  '' >> #{DIR}F.txt")
    end
    if !"#{DIR}G.txt" then 
      exec("echo  '' >> #{DIR}G.txt")
    end
  end

  def test_write_f
    create_files
    10.times do
      system(generate_random.to_s)
    end
    File.open("#{DIR}F.txt") do |file|
      assert_equal(true, file.readlines.length.empty?, 'idk')
    end
  end

  
  def test_execute
    exec("rm #{DIR}F.txt #{DIR}G.txt")
    20.times do
      lines = 20.times do
        lines << generate_random
      end
      execute(DIR.to_s)
      lines.each { |line| exec("#{line}\n") }
    end
  end

  def test_open_f
    system("rm #{DIR}F.txt") # избавимся от файла, чтобы получить ошибку
    assert_equal('Problem occured, while reading the file', open_f("#{DIR}F.txt"), "didn't caught the exception")
  end
