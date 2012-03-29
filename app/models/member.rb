class Member < ActiveRecord::Base
  belongs_to :troop
  belongs_to :section
  has_many :achievements

  def achieve!(task)
    Achievement.create!(member: self, task: task, completion_date: Date.today)
  end

end
