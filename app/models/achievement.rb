class Achievement < ActiveRecord::Base

  belongs_to :task
  belongs_to :member

  scope :for_award,    ->(award)    { joins(task: {activity: :awards}).where('activities_awards.award_id = ?', award.id) }
  scope :for_activity, ->(activity) { joins(:task).where('tasks.activity_id = ?', activity.id) }
  scope :extracted_activities, ->   { all.to_a.map(&:task).map(&:activity).flatten }

  def self.for_target(target)
    case target
      when Award
        for_award(target)
      when Activity
        for_activity(target)
      else
        []
    end
  end

  def self.record!(task, member)
    Achievement.new.record!(task, member)
  end

  def record!(task, member)
    a.create!(task: task, member: member, completion_date: Date.today)
  end

end
