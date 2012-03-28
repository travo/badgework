class Task < ActiveRecord::Base
  belongs_to :activity
  has_many :secondary_tasks, :class_name => "Task"
end
