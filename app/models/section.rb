class Section < ActiveRecord::Base

  has_many :members
  has_many :activities

end
