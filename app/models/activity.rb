class Activity < ActiveRecord::Base
  belongs_to :section
  has_many :tasks
  has_and_belongs_to_many :awards
end
