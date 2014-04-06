module Seed
  class Explorer

    def self.seed

      explorer = Award.create(title: 'Explorer Badge')
      patrol   = Award.create(title: 'Explorer Patrol Activity')
      cord     = Award.create(title: 'Explorer Cord')

      campcraft      = Award.create(title: 'Explorer Campcraft', description: '')
      citizenship    = Award.create(title: 'Explorer Citizenship', description: '')

      airactivities  = Award.create(title: 'Explorer Air Activities', description: '')
      construction   = Award.create(title: 'Explorer Construction', description: '')
      environment    = Award.create(title: 'Explorer Environment', description: '')
      watersafety    = Award.create(title: 'Explorer Water Safety', description: '')
      emergencies    = Award.create(title: 'Explorer Emergencies', description: '')
      wateractivites = Award.create(title: 'Explorer Water Activities', description: '')

      activity = Activity.create(:awards => [campcraft], title: 'Knots and Lashings')
      Task.create(activity: activity, order: 1, description: 'Assist a Scout in passing those knots and lashings required for Pioneer Level.')
      Task.create(activity: activity, order: 2, description: 'Learn to tie and use a bowline (or double figure of eight for synthetic rope).')
      Task.create(activity: activity, order: 3, description: 'Learn to tie and use a sheepshank.')
      Task.create(activity: activity, order: 4, description: 'Learn to tie and use a west country or sailmaker\'s whipping.')
      Task.create(activity: activity, order: 5, description: 'Learn to tie and use a round turn and two half hitches.')
      Task.create(activity: activity, order: 6, description: 'Learn to tie and use a diagonal lashing.')
      Task.create(activity: activity, order: 7, description: 'Learn to tie and use a figure of eight lashing.')
      Task.create(activity: activity, order: 8, description: 'Demonstrate how to tie down a load on a trailer or truck.')

      activity = Activity.create(:awards => [campcraft], title: 'Fire and fuel')
      Task.create(activity: activity, order: 1, description: 'Assist a Scout in passing the fire and fuel requirements for Pioneer level.')
      Task.create(activity: activity, order: 2, description: 'Light, maintain and extinguish a fire in wet conditions.')
      Task.create(activity: activity, order: 3, description: 'Demonstrate how to correctly light and care for a gas, fuel or wick lantern including how to replace a mantle.')

      activity = Activity.create(:awards => [campcraft], title: 'Safety and survival')
      Task.create(activity: activity, order: 1, description: 'Assist a Scout in passing the safety and survival requirements for Pioneer level.')
      Task.create(activity: activity, order: 2, description: 'Assemble a personal first aid kit for use on camps and hikes.')
      Task.create(activity: activity, order: 3, description: 'Explain what hypothermia is, how to prevent it, and how to treat it should it occur.')

      activity = Activity.create(:awards => [campcraft], title: 'Navigation')
      Task.create(activity: activity, order: 1, description: 'Demonstrate how to care for a map.')
      Task.create(activity: activity, order: 2, description: 'Demonstrate how to orientate a topographic map by both compas and physical features.')
      Task.create(activity: activity, order: 3, description: 'Understand and demonstrate how to establish direction using the sun in daylight and stars at night.')
      Task.create(activity: activity, order: 4, description: 'Demonstrate how to navigate between two points over at least one kilometer in a bush environment.')
      Task.create(activity: activity, order: 5, description: 'With your Patrol, find out how to operate a GPS and how to use it in conjunction with a map and compass.')
      Task.create(activity: activity, order: 6, description: 'Assist a Scout in passing the navigation requirements for Pioneer level.')

      activity = Activity.create(:awards => [campcraft], title: 'Cooking')
      Task.create(activity: activity, order: 1, description: 'With your patrol or other Scouts plan, purchase the food required and cook a two course meal to be cooked in camp conditions.')
      Task.create(activity: activity, order: 2, description: 'Demonstrate an understanding of the need for a balanced diet.')

      activity = Activity.create(:awards => [campcraft], title: 'Camp activity')
      Task.create(activity: activity, order: 1, description: 'Demonstrate a sound knowledge of camp sanitation.')
      Task.create(activity: activity, order: 2, description: 'Demonstrate a sound knowledge of drinking water precautions.')
      Task.create(activity: activity, order: 3, description: 'Demonstrate a sound knowledge of the storage of food.')
      Task.create(activity: activity, order: 4, description: 'Demonstrate a sound knowledge of care of the environment on a Patrol campsite.')
      Task.create(activity: activity, order: 5, description: 'With your Patrol or other Scouts assemble personal equipment for a weekend canoe trip, hike or camp.')
      Task.create(activity: activity, order: 6, description: 'With your Patrol or other Scouts prepare a menu, food list for the selected activity and purchase all the necessary requirements.')
      Task.create(activity: activity, order: 7, description: 'With your Patrol or other Scouts participate in the selected activity with the appropriate gear and equipment.')

      activity = Activity.create(:awards => [campcraft], title: 'Journey', description: 'The hike must be monitored by and Adult Leader to ensure the safety of the Scout. All government and branch rules and regulations must be complied with. You may choose canoes, or cycling for the activity. If you do so, you need to adjust the distance to be covered and increase accordingly.')
      Task.create(activity: activity, order: 1, description: 'With four other Scouts pan and go on a hike of at least 24 hours and 15 kilometers.')
      Task.create(activity: activity, order: 2, description: 'Hike in an unfamiliar area.')
      Task.create(activity: activity, order: 3, description: 'Pack and carry all appropriate gear and equipment, including food, water, tents etc.')
      Task.create(activity: activity, order: 4, description: 'Present a report to the Troop Council on completion.')

      activity = Activity.create(:awards => [campcraft], title: 'Camps')
      Task.create(activity: activity, order: 1, description: 'With your Patrol or other Scouts, have camped out in tents for a minimum of twelve nights.')



    end

  end
end