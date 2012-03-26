class Task < ActiveRecord::Base
  belongs_to :activity
  belongs_to :task
end
