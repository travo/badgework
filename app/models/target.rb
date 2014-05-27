class Target < ActiveRecord::Base

  belongs_to :prerequisite, class_name: 'Target'
  has_many :prerequisites, class_name: 'Target', foreign_key: :prerequisite_id
  has_and_belongs_to_many :activities
  accepts_nested_attributes_for :activities

  include RequiredDependencies

  private

  def dependencies
    activities
  end

  def completed_dependencies(achievements)
    activities = achievements.extracted_activities
    activities.map do |activity|
      activity if activity.satisfied?(achievements.for_activity(activity))
    end.compact
  end

end
