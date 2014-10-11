class Course < ActiveRecord::Base
  attr_accessible :name, :number_of_credits

  validates :name, presence: true
  validates :number_of_credits, presence: true

  has_many :course_faculty_junctions
  has_many :faculties, through: :course_faculty_junctions
end
