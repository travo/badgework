class Member < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :troop
  belongs_to :section
  has_many :achievements
  has_many :awards

  def complete!(task)
    achievements.create!(task: task, completion_date: Date.today)
  end

  def completed?(target)
    result = target.completed?(achievements)
    award(target) if result && target.is_a?(Target)
    result
  end

  def award(target)
    Award.new(target: target, member: self).save
  end

end
