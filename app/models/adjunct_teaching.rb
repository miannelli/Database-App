class AdjunctTeaching < ActiveRecord::Base
  attr_accessible :student_id,
      :semester_id,
      :number_of_courses,
      :total_credits

  belongs_to :student
  belongs_to :semester

  validates :number_of_courses, presence: true
  validates :total_credits, presence: true
end
