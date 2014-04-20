class Activity < ActiveRecord::Base
  belongs_to :section
  has_many :tasks
  has_and_belongs_to_many :awards

  include RequiredDependencies

  private

  def dependencies
    tasks
  end

  def completed_dependencies(achievements)
    achievements.map(&:task)
  end

end
