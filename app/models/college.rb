class College < ActiveRecord::Base
  attr_accessible :name,
      :street,
      :city,
      :state,
      :country

  

  def address
    "#{self.name}\n#{self.street}\n#{self.city}, #{self.state} #{self.country}"
  end
end
