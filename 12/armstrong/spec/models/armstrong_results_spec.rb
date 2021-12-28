require 'rails_helper'

describe Result, type: :model do
  before(:each) { Result.delete_all }
  it 'should add new records' do 
      expect {Result.create(number: 3, value: "doesn't matter") }
        .to(change { Result.count })
    end

  it 'can\'t have two identical records' do 
    Result.create(number: 3, value: "doesn't matter")
    expect(Result.new(number: 3, value: "doesn't matter")).not_to be_valid
  end
end