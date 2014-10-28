class FacultyResearchAreaJunction < ActiveRecord::Base
  attr_accessible :research_area_ids,
  	:faculty_ids

  belongs_to :faculty
  belongs_to :research_area
end
