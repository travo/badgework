require_relative 'scoutcraft'
require_relative 'pioneer'

module Seed
  class Base

    def self.seed
      fifth_brunswick = Troop.create(:name => '5th Brunswick')
      scouts = Section.create(:name => 'Scouts')
      cubs = Section.create(:name => 'Cubs')
      joeys = Section.create(:name => 'Joeys')
      venturers = Section.create(:name => 'Venturers')
      rovers = Section.create(:name => 'Rovers')

      easy = Member.create(:troop => fifth_brunswick, :section => scouts, :name => 'Eric Winters')

      Scoutcraft.seed
      Pioneer.seed
      Explorer.seed

    end

  end
end