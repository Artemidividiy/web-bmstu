# frozen-string-literal: true

require 'rails_helper'

describe ArmstrongController, type: :controller do
  def get_xml(number)
    get :view, params: { number: number }
    response
  end
  
  it 'should show xml' do
    get :view, params: { number: '3'}
    expect(response.content_type).to include('xml')
  end

  it 'differs' do
    expect(get_xml('1')).not_to eq(get_xml('4'))
  end
end
