class Award < ActiveRecord::Base

  has_and_belongs_to_many :activities
  accepts_nested_attributes_for :activities

  def satisfied?(achievements)
    related_achievements = achievements.for_award(self)
    return false if related_achievements.empty?
    satisfied_activity_requirements?(related_achievements)
  end

  private

  def satisfied_activity_requirements?(achievements)
    completed_activities = achievements.map(&:task).map(&:activity).flatten
    completed_required_activities = completed_activities.select(&:required)
    completed_optional_activities = (completed_activities - completed_required_activities)
    required_activity_count = self.activities.select(&:required).count
    return false if completed_required_activities.count < required_activity_count
    completed_required_activities.count + completed_optional_activities.count >= completion_requirement
  end

end
