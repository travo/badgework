module Seed
  class Proficiency

    def self.seed

      proficiency = Award.create(title: '', description: '')

      activity = Activity.create(:awards => [proficiency], title: '')
      Task.create(activity: activity, order: 1, description: '')







    end

  end
end