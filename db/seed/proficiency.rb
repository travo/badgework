module Seed
  class Proficiency

    def self.seed

      proficiency = Award.create(title: '', description: '')

      activity = Activity.create(:awards => [proficiency], title: '')
      Task.create(activity: activity, order: 1, description: '')


      proficiency = Award.create(title: 'Abseiling', description: 'To gain the Abseiling badge you must complete, with your Patrol or other Scouts and the appropriate qualified persons, all of the requirements for A, B and C. Participants must have attained the age of 11 years. Abseil must be single pitch, no greater than 50 metres. All abseiling activities to comply with State safety regulations.')
      activity = Activity.create(:awards => [proficiency], title: 'Demonstrate', description: 'Prior to abseil, demonstrate precautions applicable to abseiling including:')
      Task.create(activity: activity, order: 1, description: 'approaching cliffs')
      Task.create(activity: activity, order: 2, description: 'safe distance to cliff edge')
      Task.create(activity: activity, order: 3, description: 'the need to restrain loose hair and clothing')
      Task.create(activity: activity, order: 4, description: 'knowledge of standard communication conventions used in abseiling')
      activity = Activity.create(:awards => [proficiency], title: 'Skill', description: 'Demonstrate thorough knowledge of:')
      Task.create(activity: activity, order: 1, description: 'tape knot, including tie offs')
      Task.create(activity: activity, order: 2, description: 'figure 8 on a bight')
      Task.create(activity: activity, order: 3, description: 'the correct fitting of a harness')
      Task.create(activity: activity, order: 4, description: 'clipping onto the abseil rope')
      Task.create(activity: activity, order: 5, description: 'checking the system and the importance of having a second person check the system')
      Task.create(activity: activity, order: 6, description: 'a mock abseil on flat ground')
      Task.create(activity: activity, order: 7, description: 'suitable protective clothing for all seasons')
      Task.create(activity: activity, order: 8, description: 'the importance of using appropriate equipment and ropes')
      Task.create(activity: activity, order: 9, description: 'the basic rules for the use and care of equipment.')
      activity = Activity.create(:awards => [proficiency], title: 'Activity')
      Task.create(activity: activity, order: 1, description: 'Undertake five abseils.')


      proficiency = Award.create(title: 'Agriculture', description: 'To gain the Agriculture badge you must complete one task from each of A, B and C. Show that you have gained a broad understanding of agriculture and a more detailed knowledge of a specific interest in a field related to agriculture. Range: farming, gardening, fishery, forestry, resource management, pesticide and fertilizer usage')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'In discussion with your Scout Leader or by an illustrated talk to your Patrol or other Scouts, show that you have an understanding of the main stages in growing cycle applicable to your chosen topic.', required: false)
      Task.create(activity: activity, order: 2, description: 'In discussion with your Scout Leader or by an illustrated talk to your Patrol or other Scouts, show that you have an understanding of the basic skills applicable to your chosen area of agriculture.', required: false)
      Task.create(activity: activity, order: 3, description: 'After discussion with your Adviser, undertake a project appropriate to your chosen topic. Your project might be based on at least one of the following from skill and activity segments.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Spend at least 10 hours helping with planting, caring for and harvesting at crop.', required: false)
      Task.create(activity: activity, order: 2, description: 'Photograph each stage of the crop and show your Patrol how the product is dealt with, and teach your Patrol how the crop is planted and harvested.', required: false)
      Task.create(activity: activity, order: 3, description: 'Assist in banding birds, tagging fish or in some other work on a flora or fauna reserve, or assist a National Parks Service or Forestry service in performing appropriate work.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Plan and plant a flower display garden of a least 10 square metres (or a vegetable garden of at least 20 square metres) throughout one complete growing season.', required: false)
      Task.create(activity: activity, order: 2, description: 'Make a compost heap, and understand and explain the principles of manuring, both natural and artificial.', required: false)

      proficiency = Award.create(title: 'Animal Keeper', description: 'To gain the Animal Keepers badge you must complete one task from each of A, B and C. Show that you have an interest in, have learnt about and have improved your knowledge of caring for an animal. Range: Any animal can qualify for consideration in this badge BUT it must be legal to keep the animal as a domestic pet in your State.')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Find out the local laws and regulations that relate to how you must keep your animal.', required: false)
      Task.create(activity: activity, order: 2, description: 'Find out the history of the species of animal for which you care (e.g. country of origin etc).', required: false)
      Task.create(activity: activity, order: 3, description: 'Know the conditions required for breeding your animal.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Learn how to treat three ailments that could be suffered by your animal.', required: false)
      Task.create(activity: activity, order: 2, description: 'Learn how to build a shelter adequate to protect your animal from the elements.', required: false)
      Task.create(activity: activity, order: 3, description: 'Learn how to train your animal (e.g. dogs to be obedient, birds to talk etc). You are also required to give a presentation to your Patrol or Troop in a form selected by yourself on how to care for your animal.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Care for your animal for a period of at least three months.', required: false)


      proficiency = Award.create(title: 'Anthropology', description: 'To gain the Anthropology badge you must complete one task from each of A, B and C. Anthropology is the fascinating study of the human race. It covers the development of the human societies from prehistoric time through to the future. Your aim is to show that you have an interest in, have learned about, improved your knowledge, and have an understanding in an aspect of Anthropology. Range: Prehistory and history, human race, politics, present society, culture and religion.')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Find out two differing views on how man developed over time.', required: false)
      Task.create(activity: activity, order: 2, description: 'Learn legends from three different cultures and tell them to your Patrol.', required: false)
      Task.create(activity: activity, order: 3, description: 'Find out about the first Scout camp at Brownsea Island and explain to your Patrol or Troop how Scout camps have changed over the years.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'With your Patrol or alone, visit a museum and report on a particular culture exhibited there. Perhaps you could make a drawing and then build a model or replica of artifacts or crafts. Plaster modelling can be fun.', required: false)
      Task.create(activity: activity, order: 2, description: 'Prepare and deliver an illustrated talk to your Patrol or other audience, using visual aids such as wall charts, any electronic means or a culture item related to your chosen subject.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Prepare a meal from a different culture for your Patrol.', required: false)
      Task.create(activity: activity, order: 2, description: 'Visit a museum and find out what artifacts have been found from a particular culture. Tell you Patrol how people lived 1000 years ago.', required: false)
      Task.create(activity: activity, order: 3, description: 'Construct and demonstrate the use of a tool or utensil from a culture more than 1000 years old.', required: false)



      proficiency = Award.create(title: 'Art', description: 'To gain the Art badge you must complete one task from each of A, B and C. Show you have an interest in, have practised and have an improved proficiency in some form of art. Range: architecture, painting, drawing, sculpture, carving, pottery, ceramics, and photography.')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Find out about an artist of your own choice and discuss the development of their work.', required: false)
      Task.create(activity: activity, order: 2, description: 'Find out about the history of an artistic medium of your choice (e.g. sculpture, oil painting, watercolour, portrait painting, pottery, tapestry etc).', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Learn two of the main techniques used in the art form selected by you.', required: false)
      Task.create(activity: activity, order: 2, description: 'Learn the essential materials and tools used in your particular art form.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Produce two different items in an art form of your choice and show them to your Patrol or Troop.', required: false)





      proficiency = Award.create(title: 'Astronomer', description: 'To gain the Astronomer badge you must complete one task from each of A, B and C. Show you have an interest in, have practised and have an improved proficiency in Astronomy.')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Find out about two main stars and one constellation of your choice.', required: false)
      Task.create(activity: activity, order: 2, description: 'Find out how to navigate by the stars.', required: false)
      Task.create(activity: activity, order: 3, description: 'Find out how to tell time by the stars.', required: false)
      Task.create(activity: activity, order: 4, description: 'Know the principal observatories, both optical and radio, in the world.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Make a simple astronomical model to illustrate some feature of the solar system.', required: false)
      Task.create(activity: activity, order: 2, description: 'Be able to set up a telescope and know the precautions when using it.', required: false)
      Task.create(activity: activity, order: 3, description: 'Know the location in the night sky of two constellations.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Organize an activity where the stars and constellations you have researched are observed.', required: false)
      Task.create(activity: activity, order: 2, description: 'Identify and report on a natural solar system or universe event, e.g. visit by a comet.', required: false)
      Task.create(activity: activity, order: 3, description: 'Visit and report on a visit to an observatory.', required: false)





      proficiency = Award.create(title: 'Bushcraft', description: 'To gain the Bushcraft badge you must complete one task from section A, two tasks from section B, and three tasks from section C. Show you have an interest in, have practised and have an improved proficiency in some form of Bushcraft.')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Find out the origin of map making and the current method of making a map.', required: false)
      Task.create(activity: activity, order: 2, description: 'Find out three methods of purifying and straining contaminated water.', required: false)
      Task.create(activity: activity, order: 3, description: 'Find out the natural signs used to forecast weather and their meaning.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 2)
      Task.create(activity: activity, order: 1, description: 'Learn how to make two lengths of rope from natural materials using different methods (e.g. spinning strands and laying up, plaiting etc.).', required: false)
      Task.create(activity: activity, order: 2, description: 'Learn how to tell the time and direction by the sun (to an accuracy of fifteen minutes of time and 5 degrees of direction) and the stars (to an accuracy of 30 minutes of time and 10 degrees of direction).', required: false)
      Task.create(activity: activity, order: 3, description: 'Learn how to make a satisfactory shelter for two people using either natural materials or only those materials available to you.', required: false)
      Task.create(activity: activity, order: 4, description: 'Learn how to prepare and cook a chicken or fish without utensils.', required: false)
      Task.create(activity: activity, order: 5, description: 'Learn how to construct a sundial or other gadget to find true north.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 3)
      Task.create(activity: activity, order: 1, description: 'Demonstrate how to prepare and light a cooking fire in the open and the fire precautions to take.', required: false)
      Task.create(activity: activity, order: 2, description: 'Make two lengths or rope from natural materials (or materials available to you).', required: false)
      Task.create(activity: activity, order: 3, description: 'Cook a camp meal using only a billy and minimal utensils (e.g. a knife and spoon).', required: false)
      Task.create(activity: activity, order: 4, description: 'Sleep in a natural shelter or a shelter made from improvised covering (e.g. tarpaulin).', required: false)
      Task.create(activity: activity, order: 5, description: 'Light a fire without using matches.', required: false)
      Task.create(activity: activity, order: 6, description: 'Make two camp gadgets from bush materials. NOTE: Due care must be taken so that no permanent damage is done to the bush environment. All rules and regulations of the local authorities must be complied with.', required: false)




      proficiency = Award.create(title: 'Caving', description: 'To complete the Caving badge you must complete, with your Patrol or other Scouts and the appropriate qualified persons, all of the requirements for A, B and C. Participants must have attained the age of 11 years. Caves must be considered horizontal or non-technical, and must not require the use of ladders or abseiling. Duration of underground stay must not exceed 4 hours consecutively. All caving activities are to comply to State safety regulations.')
      activity = Activity.create(:awards => [proficiency], title: 'Demonstrate', description: 'Prior to caving, demonstrate precautions applicable to caving including:')
      Task.create(activity: activity, order: 1, description: 'approaching drops')
      Task.create(activity: activity, order: 2, description: 'the safe distance from drops')
      Task.create(activity: activity, order: 3, description: 'the need to restrain loose hair and clothing')
      Task.create(activity: activity, order: 4, description: 'knowledge of standard communication conventions used in caving')
      activity = Activity.create(:awards => [proficiency], title: 'Skill', description: 'Demonstrate knowledge of:')
      Task.create(activity: activity, order: 1, description: 'tape knot, including tie offs')
      Task.create(activity: activity, order: 2, description: 'figure 8 on a bight')
      Task.create(activity: activity, order: 3, description: 'the correct fitting of a harness')
      Task.create(activity: activity, order: 4, description: 'necessary personal equipment including:')
      Task.create(activity: activity, order: 5, description: 'lighting')
      Task.create(activity: activity, order: 6, description: 'protective clothing and hardware')
      Task.create(activity: activity, order: 7, description: 'the basic rules for the use and care of equipment')
      activity = Activity.create(:awards => [proficiency], title: 'Activity')
      Task.create(activity: activity, order: 1, description: 'Undertake two cave expeditions totalling not less than 6 hours.')





      proficiency = Award.create(title: 'Collector', description: 'To gain the Collector badge you must own and develop a collection for at least four months and complete one task from each of A, B and C. Show that you have an interest in, have practised and/or have an improved proficiency in collecting. Range: Anything that can be collected can qualify for this badge:, e.g. stamps, signatures, coins, bottles, cards etc.')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Find out the history of the subject of your collection.', required: false)
      Task.create(activity: activity, order: 2, description: 'Subscribe to a club or magazine that provides information about your collection.', required: false)
      Task.create(activity: activity, order: 3, description: 'Find out the meaning of particular terminology relating to your collection.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Demonstrate how to organize your collection into particular classes.', required: false)
      Task.create(activity: activity, order: 2, description: 'Demonstrate how to care for your collection.', required: false)
      Task.create(activity: activity, order: 3, description: 'Show that you understand how to increase your collection by various methods.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Give a presentation to your Patrol or Troop on your collection, explaining its history and items of particular significance and how you care for it.', required: false)
      Task.create(activity: activity, order: 2, description: 'Explain how other Scouts might begin their collection.', required: false)
      Task.create(activity: activity, order: 3, description: 'Give a report to your Adviser on what you have learned about your collection.', required: false)






      proficiency = Award.create(title: 'Commerce', description: 'To gain the Commerce badge you must complete one task from each of A, B and C. Show you have an interest in, have learnt about and have an improved proficiency in some form of commerce.')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Choose a type of commercial product such as food, fashion, cars, electronics, etc.', required: false)
      Task.create(activity: activity, order: 2, description: 'Find out how these have changed over time and the various trends. Include photos, drawings, etc.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Design a product of your chosen type of commerce. Include drawings and detailed explanations as to why your product has the things it has.', required: false)
      Task.create(activity: activity, order: 2, description: 'Draw up a timeline of the changes which have occurred to your chosen type of commerce. Include pictures and drawings.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Draw up a Patrol budget for a weekend activity to include food, transport, activities, etc.', required: false)
      Task.create(activity: activity, order: 2, description: 'Design a product and make a video/computer-generated ad to sell your product. Write a script and organize props etc.', required: false)
      Task.create(activity: activity, order: 3, description: 'Research and organize a stock market game in which your friends buy and sell false shares in a false market with real companies. Watch the news for the shares rise and fall each week.', required: false)



      proficiency = Award.create(title: 'Cultural Heritage', description: 'To gain the Cultural Heritage badge you must complete one task from each of A, B and C. Show you have an interest in, have learnt about and have improved your knowledge in some aspects of the past, present and future. Range: history, religion, human race, politics, native culture and present society.')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Find some information on the background of three non-English speaking countries. Compare such things as trade, staple foods, living conditions, etc. in relation to Australia.', required: false)
      Task.create(activity: activity, order: 2, description: 'Find out about the traditional way of life of an Australian Aboriginal group including the food they ate, the manner in which it was prepared, family relationships, ceremonies, etc.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Learn and practise three greetings from non-English speaking countries of your choice.', required: false)
      Task.create(activity: activity, order: 2, description: 'Identify and try traditional foods from cultures or countries other than your own.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Make and decorate a boomerang in natural materials. Demonstrate how it should be thrown.', required: false)
      Task.create(activity: activity, order: 2, description: 'Demonstrate the three greetings from above and their meanings.', required: false)
      Task.create(activity: activity, order: 3, description: 'Prepare and cook a 3-course, traditional meal from a country of your choice.', required: false)



      proficiency = Award.create(title: 'Crime Prevention', description: 'To gain the Crime Prevention badge you must complete one task from each of A, B and C.')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Investigate and present a report on three crime prevention activities undertaken by the police AND investigate and present a report addressing at least two of the following questions:', required: false)
      Task.create(activity: activity, order: 2, description: 'What is Neighbourhood Watch and how do the groups help prevent crime?', required: false)
      Task.create(activity: activity, order: 3, description: 'Make a list of items of value in your house and explain why you should engrave them.', required: false)
      Task.create(activity: activity, order: 4, description: 'Why is it important to report crimes to Police?', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Engrave all items of value in your home with your surname and parent’s licence numbers, with the assistance of one of your parents.', required: false)
      Task.create(activity: activity, order: 2, description: 'Design a proforma and list all items of value in your home detailing serial numbers, colours, make, models, and age of the items.', required: false)
      Task.create(activity: activity, order: 3, description: 'Enrol your family in Neighbourhood Watch or similar organisation as a means of improving your neighborhood’s safety.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Investigate and compile a list of people or organisations who can provide engravers to assist the rest of the Troop to engrave items of value at home (try Police Stations, Neighbourhood Watch etc).', required: false)
      Task.create(activity: activity, order: 2, description: 'Arrange for a member of the executive in your local Neighbourhood Watch group (or a Police Officer) to attend to talk to a group of Scouts about preventing crime in the local area.', required: false)
      Task.create(activity: activity, order: 3, description: 'Organise and run a security audit with your patrol and identify positive and negative issues at and around your den. If there are any ways you can improve security, make a list of suggestions for your Leader', required: false)





      proficiency = Award.create(title: 'Craft', description: 'To gain the Craft badge you must complete one task from each of A, B and C. Show you have an interest in, have learnt about and have improved your knowledge in the craft of choice. Range: interior design, mosaics, lapidary, embossing, bookbinding, calligraphy, decorative metal working, leather craft, quilting, die casting, knitting, sewing, crochet. cake decorating, macramé, or any other craft approved by the Troop Council.')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Find out the history and development of your particular craft.', required: false)
      Task.create(activity: activity, order: 2, description: 'Research the preparation methods needed to perform your particular craft.', required: false)
      Task.create(activity: activity, order: 3, description: 'Find out about people skilled in the craft of your choice and discuss the development of their work.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Learn at least two main techniques used in your craft of choice.', required: false)
      Task.create(activity: activity, order: 2, description: 'Be able to discuss the methods used to perform and complete your particular choice of craft.', required: false)
      Task.create(activity: activity, order: 3, description: 'Discuss the type and use usage of materials and tools that are used in your particular craft.', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 1)
      Task.create(activity: activity, order: 1, description: 'Produce and show a completed work of your particular craft requiring a minimum of 5 hours to complete the work.', required: false)




      proficiency = Award.create(title: '', description: '')
      activity = Activity.create(:awards => [proficiency], title: 'Investigate', requirement: 1)
      Task.create(activity: activity, order: 1, description: '', required: false)
      Task.create(activity: activity, order: 2, description: '', required: false)
      Task.create(activity: activity, order: 3, description: '', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Skill', requirement: 1)
      Task.create(activity: activity, order: 1, description: '', required: false)
      Task.create(activity: activity, order: 2, description: '', required: false)
      Task.create(activity: activity, order: 3, description: '', required: false)
      activity = Activity.create(:awards => [proficiency], title: 'Activity', requirement: 1)
      Task.create(activity: activity, order: 1, description: '', required: false)





    end

  end
end