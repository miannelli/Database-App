class Semester < ActiveRecord::Base
  attr_accessible :year, 
    :session

  validates :year, presence: true
  validates :session, 
    presence: true,
    inclusion:  {  
                  :in => ['Fall', 'Spring', 'Winter', 'Summer'] , 
                  message: "%{value} is not a valid session"
                }

  def to_s
    "#{self.session} #{self.year}"
  end
end
