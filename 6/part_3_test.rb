# frozen_string_literal: true

require 'minitest/autorun'

require './part_3'

# some funny testing
class Test < Minitest::Test
  
  def testing_block
    assert_equal(757_323_886.3271068, intg(0.1, 1, 1e-9) do |x_value|
                                        (Math.sin x_value) / x_value
                                      end, 'block not working')
  end

  def testing_lambda
    func = lambda { |x_value|
      x_value += 1
      (Math.tan x_value) / x_value
    }
    assert_equal(-1_092_519_931.6307595, intg(1, 2, 1e-9, &func), 'lambda not working')
  end
end
