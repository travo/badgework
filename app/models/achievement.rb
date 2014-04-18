class Achievement < ActiveRecord::Base

  belongs_to :task
  belongs_to :member

  scope :for_award,    ->(award)    { joins(task: {activity: :awards}).where('activities_awards.award_id = ?', award.id) }
  scope :for_activity, ->(activity) { joins(:task).where('tasks.activity_id = ?', activity.id) }

  def self.record!(task, member)
    Achievement.new.record!(task, member)
  end

  def record!(task, member)
    a.create!(task: task, member: member, completion_date: Date.today)
  end

end
