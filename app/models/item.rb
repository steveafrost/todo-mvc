class Item < ActiveRecord::Base
  # http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html#method-i-belongs_to
  belongs_to :list # Add methods to my model.
  validates :description, :presence => true

  def complete?
  	self.status == 1
  end

  def incomplete?
  	self.status == 0
  end
  
end
