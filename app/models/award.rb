class Award < ActiveRecord::Base

  belongs_to :target
  belongs_to :member

end