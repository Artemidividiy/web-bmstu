# frozen-string-literal: true

require 'rails_helper'

describe ProcessorController, type: :controller do
  def submit_form(number)
    get :output, params: { number: number}
    response
  end

  it 'responds with html' do 
    expect(submit_form('3').content_type).to include('html')
  end
end