class Award < ActiveRecord::Base

  has_and_belongs_to_many :activities
  accepts_nested_attributes_for :activities

  include RequiredDependencies

  private

  def dependencies
    activities
  end

  def completed_dependencies(achievements)
    activities = achievements.map(&:task).map(&:activity).flatten
    activities.map do |activity|
      activity if activity.satisfied?(achievements.for_activity(activity))
    end.compact
  end

end
