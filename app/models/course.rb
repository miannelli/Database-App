class Course < ActiveRecord::Base
  attr_accessible :name, :number_of_credits

  validates :name, presence: true
  validates :number_of_credits, presence: true
end
