class Section < ActiveRecord::Base
  belongs_to :troop
  has_many :member
end
