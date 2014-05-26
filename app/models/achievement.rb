class Achievement < ActiveRecord::Base

  belongs_to :task
  belongs_to :member

  scope :for_target,   ->(target)   { joins(task: {activity: :targets}).where('activities_targets.target_id = ?', target.id) }
  scope :for_activity, ->(activity) { joins(:task).where('tasks.activity_id = ?', activity.id) }
  scope :extracted_activities, ->   { all.to_a.map(&:task).map(&:activity).flatten }

  def self.for(target)
    case target
      when Target
        for_target(target)
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
