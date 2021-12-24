require 'rails_helper'

describe ProcessorController, type: :controller do
  def submit_form(number, format)
      get :output, params: { number:  number}
      response           
  end
  
  it 'responds' do
      expect(submit_form('3')).content_type).to include('xml')
  end
end