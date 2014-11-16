class Registration < ActiveRecord::Base
  attr_accessible :course_offering_id, 
    :student_id

  belongs_to :course_offering
  belongs_to :student
end
