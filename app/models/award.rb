class Award < ActiveRecord::Base

  is_sluggable :title
  has_and_belongs_to_many :activities

end
