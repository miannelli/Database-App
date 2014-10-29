class ResearchArea < ActiveRecord::Base
  attr_accessible :name,
  	:description,
  	:faculty_ids

  has_many :faculties, through: :faculty_research_area_junctions
  has_many :faculty_research_area_junctions
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end

