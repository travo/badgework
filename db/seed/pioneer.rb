module Seed
  class Pioneer

    def self.seed

      cord = Award.create(title: 'Pioneer Cord')
      pioneer = Award.create(title: 'Pioneer Badge')
      patrol = Award.create(title: 'Pioneer Patrol Activity')

      campcraft      = Award.create(title: 'Pioneer Campcraft', description: '')
      citizenship    = Award.create(title: 'Pioneer Citizenship', description: '')

      airactivities  = Award.create(title: 'Pioneer Air Activities', description: '')
      construction   = Award.create(title: 'Pioneer Construction', description: '')
      environment    = Award.create(title: 'Pioneer Environment', description: '')
      watersafety    = Award.create(title: 'Pioneer Water Safety', description: '')
      emergencies    = Award.create(title: 'Pioneer Emergencies', description: '')
      wateractivites = Award.create(title: 'Pioneer Water Activities', description: '')



    end

  end
end