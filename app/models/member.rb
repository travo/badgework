class Member < ActiveRecord::Base

  belongs_to :troop
  belongs_to :section
  has_many :achievements

  def complete!(task)
    achievements.create!(task: task, completion_date: Date.today)
  end

  def completed?(target)
    if target.is_a?(Target) && target.prerequisites.present?
      target.prerequisites.all? { |t| target_satisfied?(t) }
    else
      target_satisfied?(target)
    end
  end

  private

  def target_satisfied?(target)
    target.satisfied?(achievements.for(target))
  end

end
