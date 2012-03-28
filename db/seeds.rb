# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fifth_brunswick = Troop.create(:name => "5th Brunswick")
scouts = Section.create(:name => "Scouts")
cubs = Section.create(:name => "Cubs")
joeys = Section.create(:name => "Joeys")
venturers = Section.create(:name => "Venturers")
rovers = Section.create(:name => "Rovers")

gen = Member.create(:troop => fifth_brunswick, :section => scouts, :name => "Gen Giddings" )

scoutcraft = Award.create(:title => "The Scoutcraft Badge", :description => "<p>The Scoutcraft Badge is the first badge completed by every new Scout.</p><p>The Scoutcraft Badge is earned within four to six weeks of your entry to the Troop. Your Patrol Leader and the Scout Leader jointly carry out the training and testing for this badge.</p><p>The requirements for the Scoutcraft Badge are:</p>")

activity_1 = Activity.create(:awards => [scoutcraft], :title => "With your patrol complete the folling: Learn and be able to demonstrate the following knots:")
Task.create(:activity => activity_1, :order => 1, :description => "reef knot")
Task.create(:activity => activity_1, :order => 2, :description => "clove hitch")
Task.create(:activity => activity_1, :order => 3, :description => "rolling hitch")
Task.create(:activity => activity_1, :order => 4, :description => "sheet bend")

activity_2 = Activity.create(:awards => [scoutcraft], :title => "With your Patrol Leader or Scout Leader:")
Task.create(:activity => activity_2, :order => 1, :description => "Describe the Australian Flag and how to use it.")
Task.create(:activity => activity_2, :order => 2, :description => "Hoist the flag")
Task.create(:activity => activity_2, :order => 3, :description => "Break the flag")
