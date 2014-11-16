class Course < ActiveRecord::Base
  attr_accessible :name, 
  	:number_of_credits,
  	:research_area_ids

  validates :name, presence: true
  validates :number_of_credits, presence: true

  has_many :course_research_area_junctions
  has_many :research_areas, through: :course_research_area_junctions
  has_many :course_offerings

  def to_s
    "#{self.name}"
  end
end
