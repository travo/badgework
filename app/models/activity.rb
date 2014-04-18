class Activity < ActiveRecord::Base
  belongs_to :section
  has_many :tasks
  has_and_belongs_to_many :awards

  def satisfied?(achievements)
    related_achievements = achievements.for_activity(self)
    return false if related_achievements.empty?
    satisfied_task_requirements?(related_achievements)
  end

  private

  def satisfied_task_requirements?(achievements)
    completed_tasks = achievements.map(&:task)
    completed_required_tasks = completed_tasks.select(&:required)
    completed_optional_tasks = (completed_tasks - completed_required_tasks)
    required_task_count = self.tasks.select(&:required).count
    return false if completed_required_tasks.count < required_task_count
    completed_required_tasks.count + completed_optional_tasks.count >= completion_requirement
  end

end
