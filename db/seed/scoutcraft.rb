module Seed
  class Scoutcraft

    def self.seed

      membership = Award.create(title: 'World Scout Badge', description: 'As a new member to the Scout Movement, once you have completed the tasks below, you will be invested as a Scout, become a full member of your Patrol and be awarded the World Scout Badge.')
      scout_link = Award.create(title: 'Scout Link Badge', description: 'You Patrol Leader and Scout Leader jointly carry out the training and testing for this badge.')
      scoutcraft = Award.create(title: 'The Scoutcraft Badge', description: 'The Scoutcraft Badge is the first badge completed by every new Scout. The Scoutcraft Badge is earned within four to six weeks of your entry to the Troop. Your Patrol Leader and the Scout Leader jointly carry out the training and testing for this badge.')

      activity = Activity.create(:awards => [membership, scout_link], title: 'Attend four Scout Meetings or Activities')
      Task.create(activity: activity, order: 1, description: 'First meeting')
      Task.create(activity: activity, order: 2, description: 'Second meeting')
      Task.create(activity: activity, order: 3, description: 'Third meeting')
      Task.create(activity: activity, order: 4, description: 'Fouth Meeting')

      activity = Activity.create(:awards => [membership, scout_link, scoutcraft], title: 'During talks with your Scout Leaders:')
      Task.create(activity: activity, order: 1, description: 'Show a knowledge, understanding and acceptance of the Scout Promise and Law.')
      Task.create(activity: activity, order: 2, description: 'Get to know the other Scouts and Leaders in the Troop.')
      Task.create(activity: activity, order: 3, description: 'Discuss the Patrol System and Troop Council')

      activity = Activity.create(:awards => [membership, scout_link], title: 'Participate with some Scouts')
      Task.create(activity: activity, order: 1, description: 'I took part in an activity with some Scouts')

      activity = Activity.create(:awards => [scoutcraft, scout_link], title: 'With your Patrol, learn and demonstrate how to tie:')
      Task.create(activity: activity, order: 1, description: 'a reef knot')
      Task.create(activity: activity, order: 2, description: 'a clove hitch')
      Task.create(activity: activity, order: 3, description: 'a rolling hitch')
      Task.create(activity: activity, order: 4, description: 'a sheet bend')

      activity = Activity.create(:awards => [scoutcraft, scout_link], title: 'With your Patrol Leader or Scout Leader:')
      Task.create(activity: activity, order: 1, description: 'Describe the Australian Flag and how to use it.')
      Task.create(activity: activity, order: 2, description: 'Hoist the flag')
      Task.create(activity: activity, order: 3, description: 'Break the flag')

      activity = Activity.create(:awards => [scoutcraft, scout_link], title: 'Emergencies.')
      Task.create(activity: activity, order: 1, description: 'Understand why it\'s important to know how to report an emergency.')
      Task.create(activity: activity, order: 2, description: 'Know the first steps to control bleeding.')

      activity = Activity.create(:awards => [scout_link], title: 'Awards.')
      Task.create(activity: activity, order: 1, description: 'Discuss the Scout Award Scheme with your Patrol Leader.')

      activity = Activity.create(:awards => [scout_link], title: 'Camp Safety.')
      Task.create(activity: activity, order: 1, description: 'Discuss the safety precautions of camp tools with your Patrol Leader.')

      activity = Activity.create(:awards => [scoutcraft], title: 'Safety with camping tools')
      Task.create(activity: activity, order: 1, description: 'Know the laws the govern the carrying use of knives in your state or territory.')
      Task.create(activity: activity, order: 2, description: 'Know and understand the safety rules for the use and storage of knives, bush saws and axes.')
      Task.create(activity: activity, order: 3, description: 'Demonstrate an understanding of the rules that apply to the supply and use of firewood in camping areas in your state or territory.')
      Task.create(activity: activity, order: 4, description: 'Demonstrate the use of a pocketknife or multi-tool.')

      activity = Activity.create(:awards => [scoutcraft], title: 'The Patrol System')
      Task.create(activity: activity, order: 1, description: 'Discuss with your Patrol Leader the requirements of the Pioneer Target or other appropriate Target of the Award Scheme')
      Task.create(activity: activity, order: 2, description: 'Discuss with your Patrol Leader how the Patrol system operates in your Troop, how Patrol Leaders are elected, how an APL is appointed, responsibilities and the operation of Troop Council.')
      Task.create(activity: activity, order: 3, description: 'Show and understanding of the structure and duties of the Patrol.')

    end


  end
end