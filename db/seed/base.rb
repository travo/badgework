require_relative 'scoutcraft'

module Seed
  class Base

    def self.seed
      fifth_brunswick = Troop.create(:name => '5th Brunswick')
      scouts = Section.create(:name => 'Scouts')
      cubs = Section.create(:name => 'Cubs')
      joeys = Section.create(:name => 'Joeys')
      venturers = Section.create(:name => 'Venturers')
      rovers = Section.create(:name => 'Rovers')

      gen = Member.create(:troop => fifth_brunswick, :section => scouts, :name => 'Gen Giddings')

      Scoutcraft.seed

    end

  end
end