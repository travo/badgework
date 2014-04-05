module Seed
  class Pioneer

    def self.seed

      pioneer = Award.create(title: 'Pioneer Badge')
      patrol  = Award.create(title: 'Pioneer Patrol Activity')
      cord    = Award.create(title: 'Pioneer Cord')

      campcraft      = Award.create(title: 'Pioneer Campcraft', description: '')
      citizenship    = Award.create(title: 'Pioneer Citizenship', description: '')

      airactivities  = Award.create(title: 'Pioneer Air Activities', description: '')
      construction   = Award.create(title: 'Pioneer Construction', description: '')
      environment    = Award.create(title: 'Pioneer Environment', description: '')
      watersafety    = Award.create(title: 'Pioneer Water Safety', description: '')
      emergencies    = Award.create(title: 'Pioneer Emergencies', description: '')
      wateractivites = Award.create(title: 'Pioneer Water Activities', description: '')

      activity = Activity.create(:awards => [campcraft], title: 'Knots and Lashings')
      Task.create(activity: activity, order: 1, description: 'Learn a square lashing')
      Task.create(activity: activity, order: 2, description: 'Learn a round lashing')
      Task.create(activity: activity, order: 3, description: 'Learn a prussick square lashing for synthetic rope')

      activity = Activity.create(:awards => [campcraft], title: 'Fire and fuel')
      Task.create(activity: activity, order: 1, description: 'Know the fire regulations that apply outdoors in your State or Territory.')
      Task.create(activity: activity, order: 2, description: 'Explain the safety precautions to be taken with fires in camp.')
      Task.create(activity: activity, order: 3, description: 'Learn how to light and extinguish a fire in dry conditions.')
      Task.create(activity: activity, order: 4, description: 'Demonstrate how to set up and operate two types of stoves, either gas or fuel or how to select and cut firewood.')
      Task.create(activity: activity, order: 5, description: 'Know the dangers of gas or fuel lanterns.')

      activity = Activity.create(:awards => [campcraft], title: 'Safety and Survival')
      Task.create(activity: activity, order: 1, description: 'What precautions should be taken to avoid becoming separated from your patrol and lost?')
      Task.create(activity: activity, order: 2, description: 'What precautions should you take to avoid sunburn, sunstroke, heat exhaustion and skin cancer?')
      Task.create(activity: activity, order: 3, description: 'What precautions should you take when swimming in unknown waters?')
      Task.create(activity: activity, order: 4, description: 'Demonstrate an understanding of practical traffic safety for a Patrol hike.')
      Task.create(activity: activity, order: 5, description: 'Demonstrate an understanding of the correct footwear to use at Scouting activities.')

      activity = Activity.create(:awards => [campcraft], title: 'Navigation')
      Task.create(activity: activity, order: 1, description: 'Learn and demonstrate the eight points of the compass and their equivalent degrees.')
      Task.create(activity: activity, order: 2, description: 'Demonstrate how to use and care for a compass.')
      Task.create(activity: activity, order: 3, description: 'Learn and demonstrate the relationship between true and magnetic north.')
      Task.create(activity: activity, order: 4, description: 'Learn and demonstrate how to set and follow a bearing.')
      Task.create(activity: activity, order: 5, description: 'Learn and demonstrate how to read a map including scale, legend, date of issue, grid references and contour lines.')

      activity = Activity.create(:awards => [campcraft], title: 'Cooking')
      Task.create(activity: activity, order: 1, description: 'Assisting in the cooking of at least three camp meals.')

      activity = Activity.create(:awards => [campcraft], title: 'Camp Activity')
      Task.create(activity: activity, order: 1, description: 'Learn about the personal hygiene in camp.')
      Task.create(activity: activity, order: 2, description: 'Learn how to take care of your camp bedding.')
      Task.create(activity: activity, order: 3, description: 'Learn how to protect against insects.')
      Task.create(activity: activity, order: 4, description: 'Learn how to pitch, strike, dry and store a tent.')
      Task.create(activity: activity, order: 5, description: 'Assemble your personal equipment for a weekend camp.')
      Task.create(activity: activity, order: 6, description: 'Assist in the preparation of a menu and food list for a weekend camp.')
      Task.create(activity: activity, order: 7, description: 'Select and lay out a Patrol camp site.')

      activity = Activity.create(:awards => [campcraft], title: 'Journey')
      Task.create(activity: activity, order: 1, description: 'With at least four other members of your Patrol, plan and go on a hike ' +
                                                             'for at least one day on tracked terrain in a familiar area. The purpose ' +
                                                             'of this hike should be to provide an environment to put into practice ' +
                                                             'relevant skills learnt. The hike must be monitored by an Adult Leader to ' +
                                                             'ensurethe safety of the Scouts. All government and Branch rules and regulations must be complied with.')

      activity = Activity.create(:awards => [campcraft], title: 'Camps')
      Task.create(activity: activity, order: 1, description: 'With your Patrol or other Scouts have camped out in tents for a minimum of six nights.')

    end

  end
end