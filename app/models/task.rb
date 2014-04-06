class Task < ActiveRecord::Base

  belongs_to :activity
  has_many :achievements


end
