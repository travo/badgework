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

      activity = Activity.create(:awards => [citizenship], title: 'Ethics')
      Task.create(activity: activity, order: 1, description: 'Know and understand the Scout Promise and Law.')
      Task.create(activity: activity, order: 2, description: 'Show your Scout Leader that your are doing your best to keep your Scout Promise and you are living by the Scout Law.')
      Task.create(activity: activity, order: 3, description: 'Make up a prayer or similar for use at a Scout meeting or activity.')

      activity = Activity.create(:awards => [citizenship], title: 'First Aid')
      Task.create(activity: activity, order: 1, description: 'Learn the correct method to obtain a response from an injured person.')
      Task.create(activity: activity, order: 2, description: 'Learn how to find and check for circulation.')
      Task.create(activity: activity, order: 3, description: 'Learn how and when to place a patient in the recovery position.')
      Task.create(activity: activity, order: 4, description: 'Learn and demonstrate the treatments for snake and spider bites.')
      Task.create(activity: activity, order: 5, description: 'Learn three of the causes of headache or fever.')
      Task.create(activity: activity, order: 6, description: 'Learn the correct method for the management of wounds.')
      Task.create(activity: activity, order: 7, description: 'Learn the principles of foot care, e.g. prevention and treatment of blisters.')

      activity = Activity.create(:awards => [citizenship], title: 'Leadership')
      Task.create(activity: activity, order: 1, description: 'Discuss with your Patrol Leader three different examples of times when your Patrol has worked as a team. Explain to your Patrol Leader how you believe this has helped your Patrol.')

      activity = Activity.create(:awards => [citizenship], title: 'Good turn')
      Task.create(activity: activity, order: 1, description: 'As a Scout participate in some form of community service. This must be a minimum of two hours, preferably outside of the Scout movement.')

      activity = Activity.create(:awards => [citizenship], title: 'Heritage')
      Task.create(activity: activity, order: 1, description: 'Know the meanings of three local place names and discuss these with your Patrol Leader.')
      Task.create(activity: activity, order: 2, description: 'Name two cultures within your community that are different from your own and identify two ways in which each differs from your own. Discuss your findings with your Patrol Leader.')

      activity = Activity.create(:awards => [citizenship], title: 'Activity')
      Task.create(activity: activity, order: 1, description: 'With your Patrol, identify the services (e.g. health, education, leisure and social) that are available in your local area for young people of Scout age. These may be provided by your local government and/or other service providers. Present your findings to the Troop.')
      Task.create(activity: activity, order: 2, description: 'With your Patrol or other Scouts take part in a tour of your community, designed to help a visitor see and learn about it.')

      activity = Activity.create(:awards => [citizenship], title: 'Community')
      Task.create(activity: activity, order: 1, description: 'With members of your Patrol, visit and organisation that serves your local community. Find out what service it provides and how it is organised. Such an organisation could be the local seat of government, community service agency, local TV or radio station, newspaper; urban or rural fire service, ambulance station, police station, emergecy services, forestry, sewerage authority etc.')

      activity = Activity.create(:awards => [citizenship], title: 'Environment')
      Task.create(activity: activity, order: 1, description: 'Complete one third of a project for the Landcare Badge')
      Task.create(activity: activity, order: 2, description: 'Discuss with your family five ways in which they could be more environmentally friendly. Discuss these with your Patrol.')

      activity = Activity.create(:awards => [citizenship], title: 'Fitness')
      Task.create(activity: activity, order: 1, description: 'Show an understanding of a healthy lifestyle including the need for a proper diet, proper amount of sleep and the value of excercise.')

    end

  end
end