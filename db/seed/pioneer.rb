module Seed
  class Pioneer

    def self.seed

      pioneer = Target.create(title: 'Pioneer Badge')
      patrol  = Target.create(title: 'Pioneer Patrol Activity')
      cord    = Target.create(title: 'Pioneer Cord')

      campcraft      = Target.create(title: 'Pioneer Campcraft', description: '')
      citizenship    = Target.create(title: 'Pioneer Citizenship', description: '', requirement: 7)

      airactivities  = Target.create(title: 'Pioneer Air Activities', description: '', requirement: 4)
      construction   = Target.create(title: 'Pioneer Construction', description: '')
      emergencies    = Target.create(title: 'Pioneer Emergencies', description: '')
      environment    = Target.create(title: 'Pioneer Environment', description: '')
      watersafety    = Target.create(title: 'Pioneer Water Safety', description: '')
      wateractivites = Target.create(title: 'Pioneer Water Activities', description: '', requirement: 5)

      activity = Activity.create(:targets => [campcraft, construction, wateractivites], title: 'Knots and Lashings')
      Task.create(activity: activity, order: 1, description: 'Learn a square lashing')
      Task.create(activity: activity, order: 2, description: 'Learn a round lashing')
      Task.create(activity: activity, order: 3, description: 'Learn a prussick square lashing for synthetic rope')

      activity = Activity.create(:targets => [campcraft], title: 'Fire and fuel')
      Task.create(activity: activity, order: 1, description: 'Know the fire regulations that apply outdoors in your State or Territory.')
      Task.create(activity: activity, order: 2, description: 'Explain the safety precautions to be taken with fires in camp.')
      Task.create(activity: activity, order: 3, description: 'Learn how to light and extinguish a fire in dry conditions.')
      Task.create(activity: activity, order: 4, description: 'Demonstrate how to set up and operate two types of stoves, either gas or fuel or how to select and cut firewood.')
      Task.create(activity: activity, order: 5, description: 'Know the dangers of gas or fuel lanterns.')

      activity = Activity.create(:targets => [campcraft], title: 'Safety and Survival')
      Task.create(activity: activity, order: 1, description: 'What precautions should be taken to avoid becoming separated from your patrol and lost?')
      Task.create(activity: activity, order: 2, description: 'What precautions should you take to avoid sunburn, sunstroke, heat exhaustion and skin cancer?')
      Task.create(activity: activity, order: 3, description: 'What precautions should you take when swimming in unknown waters?')
      Task.create(activity: activity, order: 4, description: 'Demonstrate an understanding of practical traffic safety for a Patrol hike.')
      Task.create(activity: activity, order: 5, description: 'Demonstrate an understanding of the correct footwear to use at Scouting activities.')

      activity = Activity.create(:targets => [campcraft], title: 'Navigation')
      Task.create(activity: activity, order: 1, description: 'Learn and demonstrate the eight points of the compass and their equivalent degrees.')
      Task.create(activity: activity, order: 2, description: 'Demonstrate how to use and care for a compass.')
      Task.create(activity: activity, order: 3, description: 'Learn and demonstrate the relationship between true and magnetic north.')
      Task.create(activity: activity, order: 4, description: 'Learn and demonstrate how to set and follow a bearing.')
      Task.create(activity: activity, order: 5, description: 'Learn and demonstrate how to read a map including scale, legend, date of issue, grid references and contour lines.')

      activity = Activity.create(:targets => [campcraft], title: 'Cooking')
      Task.create(activity: activity, order: 1, description: 'Assisting in the cooking of at least three camp meals.')

      activity = Activity.create(:targets => [campcraft], title: 'Camp Activity')
      Task.create(activity: activity, order: 1, description: 'Learn about the personal hygiene in camp.')
      Task.create(activity: activity, order: 2, description: 'Learn how to take care of your camp bedding.')
      Task.create(activity: activity, order: 3, description: 'Learn how to protect against insects.')
      Task.create(activity: activity, order: 4, description: 'Learn how to pitch, strike, dry and store a tent.')
      Task.create(activity: activity, order: 5, description: 'Assemble your personal equipment for a weekend camp.')
      Task.create(activity: activity, order: 6, description: 'Assist in the preparation of a menu and food list for a weekend camp.')
      Task.create(activity: activity, order: 7, description: 'Select and lay out a Patrol camp site.')

      activity = Activity.create(:targets => [campcraft], title: 'Journey')
      Task.create(activity: activity, order: 1, description: 'With at least four other members of your Patrol, plan and go on a hike ' +
                                                             'for at least one day on tracked terrain in a familiar area. The purpose ' +
                                                             'of this hike should be to provide an environment to put into practice ' +
                                                             'relevant skills learnt. The hike must be monitored by an Adult Leader to ' +
                                                             'ensurethe safety of the Scouts. All government and Branch rules and regulations must be complied with.')

      activity = Activity.create(:targets => [campcraft], title: 'Camps')
      Task.create(activity: activity, order: 1, description: 'With your Patrol or other Scouts have camped out in tents for a minimum of six nights.')

      activity = Activity.create(:targets => [citizenship], title: 'Ethics')
      Task.create(activity: activity, order: 1, description: 'Know and understand the Scout Promise and Law.')
      Task.create(activity: activity, order: 2, description: 'Show your Scout Leader that your are doing your best to keep your Scout Promise and you are living by the Scout Law.')
      Task.create(activity: activity, order: 3, description: 'Make up a prayer or similar for use at a Scout meeting or activity.')

      activity = Activity.create(:targets => [citizenship, wateractivites, watersafety], title: 'First Aid')
      Task.create(activity: activity, order: 1, description: 'Learn the correct method to obtain a response from an injured person.')
      Task.create(activity: activity, order: 2, description: 'Learn how to find and check for circulation.')
      Task.create(activity: activity, order: 3, description: 'Learn how and when to place a patient in the recovery position.')
      Task.create(activity: activity, order: 4, description: 'Learn and demonstrate the treatments for snake and spider bites.')
      Task.create(activity: activity, order: 5, description: 'Learn three of the causes of headache or fever.')
      Task.create(activity: activity, order: 6, description: 'Learn the correct method for the management of wounds.')
      Task.create(activity: activity, order: 7, description: 'Learn the principles of foot care, e.g. prevention and treatment of blisters.')

      activity = Activity.create(:targets => [citizenship], title: 'Leadership')
      Task.create(activity: activity, order: 1, description: 'Discuss with your Patrol Leader three different examples of times when your Patrol has worked as a team. Explain to your Patrol Leader how you believe this has helped your Patrol.')

      activity = Activity.create(:targets => [citizenship], title: 'Good turn')
      Task.create(activity: activity, order: 1, description: 'As a Scout participate in some form of community service. This must be a minimum of two hours, preferably outside of the Scout movement.')

      activity = Activity.create(:targets => [citizenship], title: 'Heritage', required: false)
      Task.create(activity: activity, order: 1, description: 'Know the meanings of three local place names and discuss these with your Patrol Leader.')
      Task.create(activity: activity, order: 2, description: 'Name two cultures within your community that are different from your own and identify two ways in which each differs from your own. Discuss your findings with your Patrol Leader.')

      activity = Activity.create(:targets => [citizenship], title: 'Activity', required: false)
      Task.create(activity: activity, order: 1, description: 'With your Patrol, identify the services (e.g. health, education, leisure and social) that are available in your local area for young people of Scout age. These may be provided by your local government and/or other service providers. Present your findings to the Troop.')
      Task.create(activity: activity, order: 2, description: 'With your Patrol or other Scouts take part in a tour of your community, designed to help a visitor see and learn about it.')

      activity = Activity.create(:targets => [citizenship], title: 'Community', required: false)
      Task.create(activity: activity, order: 1, description: 'With members of your Patrol, visit and organisation that serves your local community. Find out what service it provides and how it is organised. Such an organisation could be the local seat of government, community service agency, local TV or radio station, newspaper; urban or rural fire service, ambulance station, police station, emergecy services, forestry, sewerage authority etc.')

      activity = Activity.create(:targets => [citizenship], title: 'Environment', required: false)
      Task.create(activity: activity, order: 1, description: 'Complete one third of a project for the Landcare Badge')
      Task.create(activity: activity, order: 2, description: 'Discuss with your family five ways in which they could be more environmentally friendly. Discuss these with your Patrol.')

      activity = Activity.create(:targets => [citizenship], title: 'Fitness', required: false)
      Task.create(activity: activity, order: 1, description: 'Show an understanding of a healthy lifestyle including the need for a proper diet, proper amount of sleep and the value of exercise.')


      activity = Activity.create(:targets => [airactivities], title: 'Recognition')
      Task.create(activity: activity, order: 1, description: 'Be able to recognise four different types of aircraft by sight and know their function.')

      activity = Activity.create(:targets => [airactivities], title: 'Weather')
      Task.create(activity: activity, order: 1, description: 'Explain how the three elements of weather can have an effect on the flight performance of an aircraft.')
      Task.create(activity: activity, order: 2, description: 'Be able to recognise four signs of changes in the weather in your geographical area.')

      activity = Activity.create(:targets => [airactivities], title: 'Theory')
      Task.create(activity: activity, order: 1, description: 'Know the difference between a monoplane and a biplane.')
      Task.create(activity: activity, order: 2, description: 'Using a model or pictures of an aircraft describe the following parts: fuselage, mainplane, tailplane, undercarriage, leading edge, trailing edge, rudder, aileron, tailfin, flaps, trimtab.')

      activity = Activity.create(:targets => [airactivities], title: 'Visit a Scout Air Activities Centre and/or Aerodrome')
      Task.create(activity: activity, order: 1, description: 'Find out who owns the aerodrome.')
      Task.create(activity: activity, order: 2, description: 'Find out how many runways there are.')
      Task.create(activity: activity, order: 3, description: 'Find out what the runway compass directions are.')
      Task.create(activity: activity, order: 4, description: 'Find out what and where the windsock is.')
      Task.create(activity: activity, order: 5, description: 'Find out what colour the runway markers are.')

      activity = Activity.create(:targets => [airactivities], title: 'Construction (using a kit is permitted)')
      Task.create(activity: activity, order: 1, description: 'Construct one model which will glide (hand launched) for ten seconds.')
      Task.create(activity: activity, order: 2, description: 'Construct one model which will fly (rubber band powered, hand launched) for thirty seconds.')

      activity = Activity.create(:targets => [airactivities], title: 'Experience')
      Task.create(activity: activity, order: 1, description: 'Have a flight in a light aircraft or glider.')

      activity = Activity.create(:targets => [construction], title: 'Planning')
      Task.create(activity: activity, order: 1, description: 'Sketch and explain how you and your Patrol would build a flagpole about five meters high using at least two lengths of material.')
      Task.create(activity: activity, order: 2, description: 'Sketch and explain how you and your Patrol would build a Scout chariot.')
      Task.create(activity: activity, order: 3, description: 'Sketch and explain how you and your Patrol would build a camp wash stand or similar simple equipment.')

      activity = Activity.create(:targets => [construction], title: 'Equipment and safety')
      Task.create(activity: activity, order: 1, description: 'Know how to select suitably sized poles and ropes required for the structures mentioned in Planning.')
      Task.create(activity: activity, order: 2, description: 'Know how to trim poles to length using a bush saw.')
      Task.create(activity: activity, order: 3, description: 'Explain the safety precautions necessary when constructing raised structures using poles and spars.')

      activity = Activity.create(:targets => [construction], title: 'Knots and lashings')
      Task.create(activity: activity, order: 1, description: 'Know how to tie two types of holdfasts and anchorages.')

      activity = Activity.create(:targets => [construction], title: 'Projects')
      Task.create(activity: activity, order: 1, description: 'With your Patrol or other Scouts take part in erecting a flagpole about three metres high, using at least two lengths of material which need not be wood.')
      Task.create(activity: activity, order: 2, description: 'With your Patrol or other Scouts take part in the building of a Scout chariot.')
      Task.create(activity: activity, order: 3, description: 'With your Patrol or other Scouts take part in the construction of a camp washstand or similar simple equipment.')

      activity = Activity.create(:targets => [emergencies], title: 'Recognition')
      Task.create(activity: activity, order: 1, description: 'Be able to suggest at least five different situations that could be classified as an emergency.')

      activity = Activity.create(:targets => [emergencies], title: 'Knowledge')
      Task.create(activity: activity, order: 1, description: 'Learn the importance of checking for any dangers to yourself and others before approaching an unconscious person.')
      Task.create(activity: activity, order: 2, description: 'Learn how to correctly check if a person is breathing.')
      Task.create(activity: activity, order: 3, description: 'Learn the common causes of a blocked airway and how to clear it.')
      Task.create(activity: activity, order: 4, description: 'Learn how to open the airway.')

      activity = Activity.create(:targets => [emergencies], title: 'Visit')
      Task.create(activity: activity, order: 1, description: 'With your Patrol or other Scouts visit on of the following locations and report on their preparations for particular emergencies: Fire Station, Police Operations Room, State Emergency Services Station, Casualty at a Public Hospital, Ambulance Station, Surf Life Saving Club, Meals on Wheels kitchen, Railway Breakdown Crew, An Airport, Quarantine Station, Air/Sea Rescue Station.')

      activity = Activity.create(:targets => [emergencies], title: 'Treatment')
      Task.create(activity: activity, order: 1, description: 'Learn how to control bleeding from a badly cut arm or leg.')
      Task.create(activity: activity, order: 2, description: 'Learn how to treat a nose bleed.')
      Task.create(activity: activity, order: 3, description: 'Know four uses for a triangular bandage.')
      Task.create(activity: activity, order: 4, description: 'Learn the treatment for minor burns and scalds sustained at camp.')
      Task.create(activity: activity, order: 5, description: 'Learn how to treat fractures to the lower arm and leg.')

      activity = Activity.create(:targets => [emergencies], title: 'Activity')
      Task.create(activity: activity, order: 1, description: 'Learn two types of hand seats and know when each should be used.')
      Task.create(activity: activity, order: 2, description: 'Assist in carrying a patient on a stretcher.')
      Task.create(activity: activity, order: 3, description: 'With another Scout inspect your Troop meeting place or home garage/storage shed.')
      Task.create(activity: activity, order: 4, description: 'List the things in your Troop meeting place or home garage/storage shed which may be dangerous.')
      Task.create(activity: activity, order: 5, description: 'Fix one thing in in your Troop meeting place or home garage/storage shed which may be dangerous.')
      Task.create(activity: activity, order: 6, description: 'With your patrol or other Scouts, assist in one mock emergency activity.')

      activity = Activity.create(:targets => [environment], title: 'Land Care Badge')
      Task.create(activity: activity, order: 1, description: 'Complete all the requirements for the Land Care Badge.')

      activity = Activity.create(:targets => [environment], title: 'Nature')
      Task.create(activity: activity, order: 1, description: 'Identify a local degraded area (such as salinity, soil erosion, bush land, waterway.')
      Task.create(activity: activity, order: 2, description: 'Discuss causes and suggest future action.')
      Task.create(activity: activity, order: 3, description: 'Contribute to an action plan for improvement.')
      Task.create(activity: activity, order: 4, description: 'Participate in a study of a local conservation area and discover the habitat and/or fauna species being protected. Document your findings.')

      activity = Activity.create(:targets => [environment], title: 'Recycling')
      Task.create(activity: activity, order: 1, description: 'With your family, demonstrate how your have taken responsibility for household waste (such as separation of recyclables, composting, waste reduction).')
      Task.create(activity: activity, order: 2, description: 'Contribute to an educational poster.')

      activity = Activity.create(:targets => [environment], title: 'Activity')
      Task.create(activity: activity, order: 1, description: 'With a group of Scouts, design and produce an environmental education presentation (such as poster, demonstration, activity). The presentation should show how humans have had an impact on the environment and what can be done to improve the present situation.')
      Task.create(activity: activity, order: 2, description: 'Present your environmental education presentation to your chosen audience.')

      activity = Activity.create(:targets => [environment], title: 'Visit')
      Task.create(activity: activity, order: 1, description: 'Participate in an evaluation of your local waste disposal system and suggest improvements. Where possible, visit an installation (such as a local rubbish tip, transfer station, recycling facility or sewerage plant).')
      Task.create(activity: activity, order: 2, description: 'Document your findings from your visit to your local waste disposal system.')
      Task.create(activity: activity, order: 3, description: 'Visit or contact and organisation devoted to protecting the local environment. Find out what aspects they cover (such as flora, fauna, vegetation, waterways) and help out on a service activity for a total of four hours.')

      activity = Activity.create(:targets => [wateractivites], title: 'Weather')
      Task.create(activity: activity, order: 1, description: 'Be able to locate weather forecasting information appropriate for your activity requirements.')
      Task.create(activity: activity, order: 2, description: 'Explain the effects of weather on canoeing, sailing or rowing.')

      activity = Activity.create(:targets => [wateractivites], title: 'Safety')
      Task.create(activity: activity, order: 1, description: 'Demonstrate wearing an approved personal floatation device and know when it should be worn while boating.')
      Task.create(activity: activity, order: 2, description: 'Without a personal floatation device — stay afloat for three minutes.')
      Task.create(activity: activity, order: 3, description: 'Be able to swim 50 metres.')
      Task.create(activity: activity, order: 4, description: 'Explain the importance of staying wiht an overturned boat and never boating alone.')

      activity = Activity.create(:targets => [wateractivites], title: 'First aid')
      Task.create(activity: activity, order: 1, description: 'Know the most frequent medical hazards associated with boating (sunburn, eyestrain, sunstroke, seasickness, immersion, hypothermia).')
      Task.create(activity: activity, order: 2, description: 'Know the appropriate treatment for sunburn, eyestrain, sunstroke, seasickness, immersion and hypothermia and precautions to avoid them.')

      activity = Activity.create(:targets => [wateractivites], title: 'Knots')
      Task.create(activity: activity, order: 1, description: 'Learn the figure of eight knot.')
      Task.create(activity: activity, order: 2, description: 'Learn the anchor or fisherman\'s bend.')
      Task.create(activity: activity, order: 3, description: 'Learn the bowline.')

      activity = Activity.create(:targets => [wateractivites], title: 'Canoeing', description: 'In an approved canoe, with the assistance of an Adventurer Level Scout who has appropriate qualifications, complete the following:')
      Task.create(activity: activity, order: 1, description: 'Learn the main parts of a canoe and paddle')
      Task.create(activity: activity, order: 2, description: 'Demonstrate paddling backwards and forwards and emergency stopping')
      Task.create(activity: activity, order: 3, description: 'Paddle upstream, return and make a clean approach to the landing stage or bank')
      Task.create(activity: activity, order: 4, description: 'Capsize canoe in water; bring it back to shore and empty canoe in correct manner')
      Task.create(activity: activity, order: 5, description: 'Paddle a canoe for a minimum of three hours')

      activity = Activity.create(:targets => [wateractivites], title: 'Rowing', description: 'In an approved rowing boat, with the assistance of an Adventurer Level Scout who has appropriate qualifications, complete the following:')
      Task.create(activity: activity, order: 1, description: 'Learn and name the various parts of an oar.')
      Task.create(activity: activity, order: 2, description: 'Learn by name and be able to point out a minimum of five parts of a rowing boat.')
      Task.create(activity: activity, order: 3, description: 'Demonstrate how to row a dinghy around a 50m triangular course.')

      activity = Activity.create(:targets => [wateractivites], title: 'Sailing', description: 'In an approved sailing boat, with the assistance of an Adventurer Level Scout who has appropriate qualifications, complete the following:')
      Task.create(activity: activity, order: 1, description: 'Learn the parts of a sail.')
      Task.create(activity: activity, order: 2, description: 'Learn the parts of a sailing boat.')
      Task.create(activity: activity, order: 2, description: 'Be able to assist in rigging a boat.')
      Task.create(activity: activity, order: 2, description: 'Crew in a sailboat for a minimum of six hours.')

      activity = Activity.create(:targets => [wateractivites], title: 'Yachting')
      Task.create(activity: activity, order: 1, description: 'Complete the Australian Federation of Yachting Course: Basic Skills I — getting into Small Boat Sailing.')

      activity = Activity.create(:targets => [watersafety], title: 'Safe entry and swim')
      Task.create(activity: activity, order: 1, description: 'Jump into deep water fully clothed (long pants, shirt, socks and runners), undress in the water with feet off the bottom.')
      Task.create(activity: activity, order: 2, description: 'Demonstrate you can swim 25 metres without an approved personal floatation device (APFD).')
      Task.create(activity: activity, order: 3, description: 'Demonstrate you can remain afloat for at least three minutes without the use of an APFD.')
      Task.create(activity: activity, order: 4, description: 'Demonstrate you can swim 50 metres with an APFD, then tread water or slow swim for 15 minutes.')

      activity = Activity.create(:targets => [watersafety], title: 'Rescue')
      Task.create(activity: activity, order: 1, description: 'Demonstrate a reaching assist (arm, towel, pole, etc).')
      Task.create(activity: activity, order: 2, description: 'Demonstrate a throwing assist (rope, ring, buoy, etc).')
      Task.create(activity: activity, order: 3, description: 'Demonstrate a contact carry of an unconscious person over ten metres.')

      activity = Activity.create(:targets => [watersafety], title: 'Safety')
      Task.create(activity: activity, order: 1, description: 'Know the problems and dangers that can occur, or are present, in three areas relevant to your environment. Choose from sea, rivers, swimming pools, dams and lakes.')
      Task.create(activity: activity, order: 2, description: 'Know the precautions and treatment to be taken against the following: sunburn, cramp, skin cancer, stings, exhaustion, leeches, blue ringed octopus, and one other danger in your environment, e.g. stone fish.')

    end

  end
end