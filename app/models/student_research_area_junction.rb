class StudentResearchAreaJunction < ActiveRecord::Base
  attr_accessible :research_area_id,
  	:student_id

  belongs_to :student
  belongs_to :research_area
end
