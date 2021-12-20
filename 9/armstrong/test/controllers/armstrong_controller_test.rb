require 'test_helper'

VALID_LEN_3 = %w[153 370 371 407].freeze

class ArmstrongControllerTest < ActionDispatch::IntegrationTest
  test 'should get input' do
    get '/'
    assert_response :success
  end

  test 'should get output for 3' do
    get armstrong_output_url, params: { 'number': '3' };
    assert_response :success
    VALID_LEN_3.each do |num|
      assert_match num, response.body
    end
  end
end
