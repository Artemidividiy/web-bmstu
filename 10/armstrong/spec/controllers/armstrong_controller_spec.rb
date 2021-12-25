require 'rails_helper'

describe ArmstrongController, type: :controller do
  def get_xml(number)
    get :view, params: { number: number, format: :xml }
    response
  end

  def armstrong?(num)
    x_str = num.to_s
    num == x_str.chars.sum { |digit| digit.to_i**x_str.size }
  end

  def gen_armstrong_nums(n_value)
    (10**(n_value - 1)...10**n_value).filter { |x_value| armstrong?(x_value) }
  end

  it 'should respond with rss' do
    get :view, params: { number: '3', format: :rss }
    expect(response.content_type).to include('xml')
  end

  it 'gets different outputs' do
    expect(get_xml('3')).not_to eq(get_xml('1'))
  end

  it 'gets reliable data' do
    res = get_xml('3').body
    
    100.times do
        expect(res).to include(gen_armstrong_nums(3).sample.to_s)
    end
  end
end