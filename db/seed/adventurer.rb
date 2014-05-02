module Seed
  class Adventurer

    def self.seed

      adventurer = Award.create(title: 'Adventurer Badge')
      patrol     = Award.create(title: 'Adventurer Patrol Activity')
      cord       = Award.create(title: 'Adventurer Cord')

      campcraft      = Award.create(title: 'Adventurer Campcraft', description: '')
      citizenship    = Award.create(title: 'Adventurer Citizenship', description: 'To achieve the Adventurer Citizenship Target, the Scout must complete all the requirements for No’s 1 to 4, together with any three of the remaining five parts.', requirement: 7)

      airactivities  = Award.create(title: 'Adventurer Air Activities', description: '', requirement: 6)
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

      activity = Activity.create(:awards => [airactivities], title: 'Recognition')
      Task.create(activity: activity, order: 1, description: 'Be able to recognise by sight twelve types of aircraft.')
      Task.create(activity: activity, order: 2, description: 'Recognise and describe the difference between the piston engine and the turbojet engine and show that you understand how the power of these units is adapted to propel an aircraft.')

      activity = Activity.create(:awards => [airactivities], title: 'Weather')
      Task.create(activity: activity, order: 1, description: 'Know the various types of cloud and the weather usually associated with each type, and what effect these formations have upon the flight performance of an aircraft. 1.Find out some of the factors required to estimate the time it would take to cover a certain distance in the air.')
      Task.create(activity: activity, order: 2, description: 'Show a proficiency in interpreting weather maps.')

      activity = Activity.create(:awards => [airactivities], title: 'Theory')
      Task.create(activity: activity, order: 1, description: 'Describe the correct procedure for radio communication with the control tower or other aircraft on the ground and in the air.')
      Task.create(activity: activity, order: 2, description: 'Do one of the following: give a talk to your Patrol or Troop for at least five minutes on Australia’s early aviation history, or compile a report on Australia’s aviation pioneers, or find out, by discussion with a commercial pilot or flight instructor, what the main responsibilities are in performance of their work.')

      activity = Activity.create(:awards => [airactivities], title: 'Activity', description: 'Arrange to visit a Scout or Air Activity Centre and/or aerodrome.')
      Task.create(activity: activity, order: 1, description: 'Find out who is responsible for the maintenance of airport services')
      Task.create(activity: activity, order: 2, description: 'Find out what is the function of a control tower')
      Task.create(activity: activity, order: 3, description: 'Find out what is the function of an Air Traffic Controller')
      Task.create(activity: activity, order: 4, description: 'Find out what airlines/aircraft use the aerodrome.')
      Task.create(activity: activity, order: 5, description: 'Complete five of the tests from one of the following familiarization electives, or complete the aeromodelling task.')

      activity = Activity.create(:awards => [airactivities], title: 'Light Aircrift Familiarisation', requirement: 5, required: false)
      Task.create(activity: activity, order: 1, description: 'Learn how to assist correctly in ground handling of an aircraft and find out the safety precautions required whilst refueling.')
      Task.create(activity: activity, order: 2, description: 'Describe cockpit checks performed by the pilot prior to takeoff and prior to the landing approach.')
      Task.create(activity: activity, order: 3, description: 'Describe the primary effect of aircraft controls.')
      Task.create(activity: activity, order: 4, description: 'Have two flights in a light aircraft.')
      Task.create(activity: activity, order: 5, description: 'Know and demonstrate an elementary knowledge of aircraft controls – control column, rudder pedals, throttle, flaps, trim tabs, mixture control.')
      Task.create(activity: activity, order: 6, description: 'With the use of a map, compass and protractor, show how to plot a course between two towns.')
      Task.create(activity: activity, order: 7, description: 'Know the procedure to adopt in the event of an emergency.')

      activity = Activity.create(:awards => [airactivities], title: 'Glider Familiarisation', requirement: 5, required: false)
      Task.create(activity: activity, order: 1, description: 'Learn and demonstrate handling and parking.')
      Task.create(activity: activity, order: 2, description: 'Learn and demonstrate launching signals.')
      Task.create(activity: activity, order: 3, description: 'Act as a satisfactory member of a ground-handling crew in an actual landing.')
      Task.create(activity: activity, order: 4, description: 'Know the procedure to adopt in the event of an emergency.')
      Task.create(activity: activity, order: 5, description: 'Have had two flights in a glider.')
      Task.create(activity: activity, order: 6, description: 'With the use of map, compass and protractor show how to plot a course between two towns.')

      activity = Activity.create(:awards => [airactivities], title: 'Aeromodeling', description: 'Construct two models selected from the following classifications (use of kit permitted). The models shall have the minimum flight times listed below:', required: false)
      Task.create(activity: activity, order: 1, description: 'glider (hand launched): 17 seconds')
      Task.create(activity: activity, order: 2, description: 'glider (hand launched): aerobatics')
      Task.create(activity: activity, order: 3, description: 'rubber powered: one minute')
      Task.create(activity: activity, order: 4, description: 'engine powered: (maximum 15 seconds motor run) two minutes.')

      activity = Activity.create(:awards => [construction], title: 'Planning')
      Task.create(activity: activity, order: 1, description: 'Sketch and explain how you, along with your Patrol, would go about constructing one of the major projects.')
      Task.create(activity: activity, order: 2, description: 'Assist and test another Scout to pass the requirements of Explorer Planning 1.')

      activity = Activity.create(:awards => [construction], title: 'Equipment and safety')
      Task.create(activity: activity, order: 1, description: 'Demonstrate a knowledge of the sizes and strengths of materials (poles, ropes, and tackle) needed to safely build and use the structures specified for a major project.')
      Task.create(activity: activity, order: 2, description: 'Explain to your Patrol the safety requirements for building and using the structures specified.')
      Task.create(activity: activity, order: 3, description: 'Explain to your Patrol or other Scouts, the main advantages and disadvantages of different types of ropes, e.g. manila, sisal, nylon, and polypropylene. Include the best method of terminating the ends of these ropes.')

      activity = Activity.create(:awards => [construction], title: 'Knots and structure')
      Task.create(activity: activity, order: 1, description: 'Demonstrate the knots, splices and lashings in Adventurer Campcraft 1b.')
      Task.create(activity: activity, order: 2, description: 'Assist and test your Patrol or other Scouts to pass the knots and lashings required in a major project.')
      Task.create(activity: activity, order: 3, description: 'Demonstrate tensioning of ropes with and without pulleys, and rope ladder construction.')

      activity = Activity.create(:awards => [construction], title: 'Organisation and management', description: 'Plan and lead your Patrol or other Scouts in the completion of two of the following major projects:', requirement: 2)
      Task.create(activity: activity, order: 1, description: 'braced footbridge at least 3m long')
      Task.create(activity: activity, order: 2, description: 'monkey suspension bridge spanning at least 7m')
      Task.create(activity: activity, order: 3, description: 'camp table or similar complex piece of camping equipment')
      Task.create(activity: activity, order: 4, description: 'tower with a platform approximately 3m above the ground')
      Task.create(activity: activity, order: 5, description: 'ballista/catapult capable of propelling a projectile at least 10m')
      Task.create(activity: activity, order: 6, description: 'swing bridge suitable of safely carrying each Patrol member across a gap of at least 3m')
      Task.create(activity: activity, order: 7, description: 'another project of equivalent safety or difficulty approved by Troop Council.')


      activity = Activity.create(:awards => [emergencies], title: 'Recognition')
      Task.create(activity: activity, order: 1, description: 'Together with a qualified instructor, teach and test your Patrol about eight different types of emergencies and how to react to these emergencies.')

      activity = Activity.create(:awards => [emergencies], title: 'Knowledge')
      Task.create(activity: activity, order: 1, description: 'To teach and demonstrate the DRABCD Action Plan.')
      Task.create(activity: activity, order: 2, description: 'Together with a qualified instructor, teach and test your Patrol the correct technique for Cardiopulmonary Resuscitation.')
      Task.create(activity: activity, order: 3, description: 'Be able to recognise dynamite, gelignite, a detonator, live ammunition, and know what to do if you should find any of these.')
      Task.create(activity: activity, order: 4, description: 'Be able to recognise hazards posed by sharps (needles, syringes, glass, metal objects).')
      Task.create(activity: activity, order: 5, description: 'Be able to recognise hazards associated with medications and drugs.')

      activity = Activity.create(:awards => [emergencies], title: 'Visit')
      Task.create(activity: activity, order: 1, description: 'Organise for your Patrol or other Scouts to visit one of the locations listed in Pioneer 3. This is not to be one of the same locations visited during the earning of the Pioneer and Explorer Levels.')

      activity = Activity.create(:awards => [emergencies], title: 'Treatment')
      Task.create(activity: activity, order: 1, description: 'Teach your Patrol or other Scouts about the circulation of the blood')
      Task.create(activity: activity, order: 2, description: 'Teach your Patrol or other Scouts about how to control external bleeding')
      Task.create(activity: activity, order: 3, description: 'Teach your Patrol or other Scouts about the likely cause, symptoms and treatment of internal bleeding.')
      Task.create(activity: activity, order: 4, description: 'Demonstrate the use of a knapsack spray and rakes in fighting a grass fire.')
      Task.create(activity: activity, order: 5, description: 'Teach your Patrol the different types of fire extinguishers')
      Task.create(activity: activity, order: 6, description: 'Teach your Patrol explain on what types of fire each should be used/not used, e.g. electrical, oil.')
      Task.create(activity: activity, order: 7, description: 'Lead your Patrol or other Scouts in Explorer Emergencies 4 Activity.')
      Task.create(activity: activity, order: 8, description: 'Set up emergency communications between two points 500m apart and out of sight of each other.')
      Task.create(activity: activity, order: 9, description: 'Teach and test a Scout at Explorer level how to deal with fractures to the limbs and collarbone.')
      Task.create(activity: activity, order: 10, description: 'Demonstrate to your Patrol how to treat a sprained ankle.')
      Task.create(activity: activity, order: 11, description: 'Demonstrate to your Patrol how to treat a patient with an eye injury.')

      activity = Activity.create(:awards => [emergencies], title: 'Mock Emergencies')
      Task.create(activity: activity, order: 1, description: 'Lead your Patrol, or other Scouts, satisfactorily in dealing with two mock emergencies. Some suggestions are: traffic accident; rescue from burning building; search for lost child; near drowning in backyard pool; electrocution; bushfire.')








    end

  end

end