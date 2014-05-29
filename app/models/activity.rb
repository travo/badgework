class Activity < ActiveRecord::Base
  belongs_to :section
  has_many :tasks
  has_and_belongs_to_many :targets

  include RequiredDependencies

  def completed?(achievements)
    satisfied?(achievements.for(self))
  end

  private

  def dependencies
    tasks
  end

  def completed_dependencies(achievements)
    achievements.map(&:task) || []
  end

end
