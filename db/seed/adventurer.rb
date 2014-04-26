module Seed
  class Adventurer

    def self.seed

      adventurer = Award.create(title: 'Adventurer Badge')
      patrol     = Award.create(title: 'Adventurer Patrol Activity')
      cord       = Award.create(title: 'Adventurer Cord')

      campcraft      = Award.create(title: 'Adventurer Campcraft', description: '')
      citizenship    = Award.create(title: 'Adventurer Citizenship', description: 'To achieve the Adventurer Citizenship Target, the Scout must complete all the requirements for No’s 1 to 4, together with any three of the remaining five parts.', requirement: 7)

      airactivities  = Award.create(title: 'Adventurer Air Activities', description: '')
      construction   = Award.create(title: 'Adventurer Construction', description: '')
      emergencies    = Award.create(title: 'Adventurer Emergencies', description: '')
      environment    = Award.create(title: 'Adventurer Environment', description: '', requirement: 5)
      wateractivites = Award.create(title: 'Adventurer Water Activities', description: '', requirement: 6)
      watersafety    = Award.create(title: 'Adventurer Water Safety', description: '')

      activity = Activity.create(:awards => [campcraft, construction], title: 'Knots and Lashings')
      Task.create(activity: activity, order: 1, description: 'Assist a Scout in passing those knots and lashings required for Explorer Level.')
      Task.create(activity: activity, order: 2, description: 'Learn to tie and use a backsplice and eye splice.')
      Task.create(activity: activity, order: 3, description: 'Learn to tie and use a hunter\'s bend.')
      Task.create(activity: activity, order: 4, description: 'Learn to tie and use a fisherman\'s knot or prussick knot (for synthetic rope).')
      Task.create(activity: activity, order: 5, description: 'Learn to tie and use a Japanese and Filipino lashing.')
      Task.create(activity: activity, order: 6, description: 'Learn to tie and use a alpine butterfly knot (for synthetic rope)')

      activity = Activity.create(:awards => [campcraft], title: 'Fire and fuel')
      Task.create(activity: activity, order: 1, description: 'Teach and test a Scout in the skill required in Explorer Campcraft Fire and Fuel.')
      Task.create(activity: activity, order: 2, description: 'Show how to make sure a campsite complies with the regulations in your state.')
      Task.create(activity: activity, order: 3, description: 'Explain the three principles of how to survive a bush fire. Give three examples of how to apply them.')
      Task.create(activity: activity, order: 4, description: 'Explain and demonstrate the use of and differences between two types of possible hike stoves.')

      activity = Activity.create(:awards => [campcraft], title: 'Safety and survival')
      Task.create(activity: activity, order: 1, description: 'Instruct and test a Scout in the safety and survival requirements for Explorer level Safety and survival.')
      Task.create(activity: activity, order: 2, description: 'Demonstrate two methods of obtaining water under survival conditions.')
      Task.create(activity: activity, order: 3, description: 'Know ho to fina dn improvise shelter in the bush and to maintain body temperature.')
      Task.create(activity: activity, order: 4, description: 'Demonstrate to your Scout Leader that your are familiar with the contents of the Troop First Aid Kit and know the correct use of these items.')
      Task.create(activity: activity, order: 5, description: 'With your Patrol, discuss the natural dangers and hazards that can occur in your local area. Discuss ways to stay safe from these dangers and hazards.')

      activity = Activity.create(:awards => [campcraft], title: 'Navigation')
      Task.create(activity: activity, order: 1, description: 'With another Scout, set up and run and orienteering course for your Patrol and other Scouts either in a local park or at a Camp.')
      Task.create(activity: activity, order: 2, description: 'Demonstrate how to plan a route for hike from a topographic map, including an understanding of Naismith\'s rule.')
      Task.create(activity: activity, order: 3, description: 'Demonstrate how to establish your location on a map using back bearings and triangulation or resection.')
      Task.create(activity: activity, order: 4, description: 'Help other Scouts to pass the requirements of Explorer level Navigation.')

      activity = Activity.create(:awards => [campcraft], title: 'Cooking', requirement: 5)
      Task.create(activity: activity, order: 1, description: 'Discuss and demonstrate with members of your Patrol the advantages of fresh foods.')
      Task.create(activity: activity, order: 2, description: 'Discuss and demonstrate with members of your Patrol the advantages of dehydrated foods.')
      Task.create(activity: activity, order: 3, description: 'Discuss and demonstrate with members of your Patrol the advantages of pre-packaged foods.')
      Task.create(activity: activity, order: 4, description: 'Plan and cook for your Patrol a three course meal using a gas/fuel stove or an open fire.', required: false)
      Task.create(activity: activity, order: 5, description: 'Plan and cook for your Patrol a two course meal using a camp oven.', required: false)
      Task.create(activity: activity, order: 6, description: 'Plan and cook for your Patrol a backwoods meal comprising three courses for at least two people without the use of utensils.', required: false)

      activity = Activity.create(:awards => [campcraft], title: 'Camp activity', requirement: 3)
      Task.create(activity: activity, order: 1, description: 'Instruct and test a Scout in requirements of Explorer Campcraft 6b.')
      Task.create(activity: activity, order: 2, description: 'Estimate, across water, a distance of at least 10 metres and a height of not more than 30 metres, using improvised apparatus and your own personal measurements. Use three different methods to an accuracy of +/- 10%.', required: false)
      Task.create(activity: activity, order: 3, description: 'Demonstrate how to repair minor tears in tents, and how to care for a hike tent of your choice.', required: false)
      Task.create(activity: activity, order: 4, description: 'With members of your Patrol or with other Scouts, assemble the personal and Patrol equipment required for a camp held in extreme weather conditions and participate in much a camp. Prepare the menus and organise the purchase of food for this camp.\
                                                              \n\nThe safety of Scouts is a top priority when assessing the conditions under which the camp is to be held. All government and Branch rules and regulations must be complied with.', required: false)

      activity = Activity.create(:awards => [campcraft], title: 'Journey')
      Task.create(activity: activity, order: 1, description: 'Plan and undertake a hike of at least 30 kilometres with at least four other Scouts into unfamiliar terrain requiring two nights out-of-doors.\
                                                              Use lightweight equipment and foods as far as practicable. The hike must be monitored by and Adult Leader to ensure the safety of the Scouts.\
                                                              All government and Branch rules and regulations must be complied with. Canoes or bicycles may be used but the distance covered should be increased\
                                                              accordingly. If canoes or bicycles are used the team should be self sufficient, as with hikes, and carry all items required for the journey.\
                                                              Report on your experience through the us of an illustrated log.')

      activity = Activity.create(:awards => [campcraft], title: 'Camps')
      Task.create(activity: activity, order: 1, description: 'With your Patrol or other Scouts have camped out in tents for minimum of 15 nights.')


      activity = Activity.create(:awards => [citizenship], title: 'Values')
      Task.create(activity: activity, order: 1, description: 'Promise and Law Assist and test a Pioneer Scout in the completion of test 1 of Pioneer Citizenship.')
      Task.create(activity: activity, order: 2, description: 'Spiritual development: Lead your Patrol in planning and participating in a Scouts’ Own at a Camp or other Troop Activity (such as World Scouts’ Day or a church service).')

      activity = Activity.create(:awards => [citizenship], title: 'First aid')
      Task.create(activity: activity, order: 1, description: 'Complete a recognized First Aid Course.')
      Task.create(activity: activity, order: 2, description: 'Assist and test a Scout to pass the First Aid segment of the Pioneer Badge.')
      Task.create(activity: activity, order: 3, description: 'Demonstrate how to deal with fractures to the limbs and collarbone.')
      Task.create(activity: activity, order: 4, description: 'With another Scout set up and run a \'mock\' emergency to cover at least three of the tasks required in Pioneer and Explorer level and First Aid segment.')

      activity = Activity.create(:awards => [citizenship], title: 'Leadership')
      Task.create(activity: activity, order: 1, description: 'In the Troop Council, or with your Patrol, plan and conduct three activities which will provide opportunities for your Patrol members to learn about leadership and being a productive member of a team.')

      activity = Activity.create(:awards => [citizenship], title: 'Good turn', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Assist at a Cub Scout camp or Joey Scout sleepover.')
      Task.create(activity: activity, order: 2, description: 'Seek out a worthwhile service to others and actively participate for a cumulative period of at least ten hours. If possible, involve members of your Patrol on appropriate occasions, to satisfy their Pioneer or Explorer level requirements.')
      Task.create(activity: activity, order: 3, description: 'With your Patrol or other Scouts, participate in a community service project for at least 10 hours with a local service club such as Apex, Lions or Rotary. Find out what services the organisation offers to the community.')

      activity = Activity.create(:awards => [citizenship], title: 'Heritage', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Report on the history, growth and present role of an Australian organisation of your choice. Examples: Royal Flying Doctor Service, Defence Forces, The St. John Ambulance Association.')
      Task.create(activity: activity, order: 2, description: 'With your Patrol or other Scouts, visit an Australian historical site of national significance, and create a photographic, electronic or video record of your visit. Present this record to your Troop or other Scouts.')

      activity = Activity.create(:awards => [citizenship], title: 'Activity', requirement: 2)
      Task.create(activity: activity, order: 1, description: 'Make regular contact over a three month period of time by e-mail or letter with a Scout or Patrol in another country or other State or Territory. Exchange ideas for games and activities, and use at least one of these games or activities in your Troop program.', required: false)
      Task.create(activity: activity, order: 2, description: 'With your Patrol, investigate an agency that provides aid and assistance to overseas communities and countries such as Care Australia, Amnesty International, Red Cross International Aid, or World Vision. Find out how you can help them.', required: false)
      Task.create(activity: activity, order: 3, description: 'With your Patrol or other Scouts, choose an international issue that is making headlines in the media. Research and discuss the issue.', required: false)
      Task.create(activity: activity, order: 4, description: 'Organise for your Patrol a visit to the seat of either local, state or federal government.', required: false)
      Task.create(activity: activity, order: 5, description: 'With your Patrol, use the Internet or other sources to find out about Scouting in three other countries and present your findings to the Troop.', required: false)

      activity = Activity.create(:awards => [citizenship], title: 'Community')
      Task.create(activity: activity, order: 1, description: 'Organise for your Patrol a visit to one of the service facilities outlined in Pioneer Citizenship 7, and understand the contribution made to the community by the organisation selected.')

      activity = Activity.create(:awards => [citizenship], title: 'Environment')
      Task.create(activity: activity, order: 1, description: 'Complete the World Scout Environment Badge')
      Task.create(activity: activity, order: 2, description: 'With your Patrol participate in a discussion and activity about walking softly in the bush by following the minimum impact code for bushwalking as set down by the National Parks authority in your state or territory.')
      Task.create(activity: activity, order: 3, description: 'On a hike or camp with your Patrol or with other Scouts, examine the good and bad effects of man on the surrounding environment. Discuss the impact of this and include suggestions for any actions that could be taken to remedy the bad effects.')

      activity = Activity.create(:awards => [citizenship], title: 'Fitness')
      Task.create(activity: activity, order: 1, description: 'Using a game or activity instruct your Patrol in the requirements for Pioneer level.')
      Task.create(activity: activity, order: 2, description: 'With your Patrol or other Scouts, participate in an activity and/or discussion that focuses on the negative effects of drugs, smoking and other substance abuse.')









    end

  end

end