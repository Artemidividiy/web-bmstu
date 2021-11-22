# frozen_string_literal: true

require './part_1'

puts 'Введите данные программы'
a = Solution.new
x = gets
z = gets
r = gets
puts a.sentence(x.to_i, z.to_i, r.to_i)
