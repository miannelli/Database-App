class Degree < ActiveRecord::Base
  attr_accessible :name, 
    :abbreviation

  has_many :students

  def to_s
    "#{self.name} - #{self.abbreviation}"
  end
end
