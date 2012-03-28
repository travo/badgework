class Section < ActiveRecord::Base

  has_many :members
  has_many :activities
  belongs_to :troop, :through => :member

end
