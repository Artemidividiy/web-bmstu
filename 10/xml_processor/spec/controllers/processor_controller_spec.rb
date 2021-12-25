require 'rails_helper'

describe ProcessorController, type: :controller do
  def submit_form(number, format)
      get :output, params: { number:  number, format: format }
      response           
  end
  
  it 'responds and renders as xml' do
    expect(submit_form('3', :xml).content_type).to include('xml')
  end
  it 'responds and renders as xml' do
    expect(submit_form('3', :html).content_type).to include('html')
  end
end