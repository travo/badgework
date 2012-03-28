class Member < ActiveRecord::Base
  belongs_to :troop
  belongs_to :section
  has_many :achievements
end
