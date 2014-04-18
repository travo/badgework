class Member < ActiveRecord::Base

  belongs_to :troop
  belongs_to :section
  has_many :achievements

  def complete!(task)
    achievements.create!(task: task, completion_date: Date.today)
  end

  def completed?(award_or_activity)
    award_or_activity.satisfied?(achievements)
  end

end
