class Result < ApplicationRecord
  validates_uniqueness_of :number
end
