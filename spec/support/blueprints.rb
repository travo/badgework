require 'machinist/active_record'

Troop.blueprint do
  name { "5th Brunswick" }
end

Section.blueprint do
  name { "Scouts" }
end


Member.blueprint do
  troop { Troop.make }
  section { Section.make }
  name { "Gen Giddings" }
end

Award.blueprint do
  title { "The Scoutcraft Badge" }
  description { "<p>The Scoutcraft Badge is the first badge completed by every new Scout.</p><p>The Scoutcraft Badge is earned within four to six weeks of your entry to the Troop. Your Patrol Leader and the Scout Leader jointly carry out the training and testing for this badge.</p><p>The requirements for the Scoutcraft Badge are:</p>" }
end

Activity.blueprint do
  awards { [Award.make] }
  title  { "With your patrol complete the following: Learn and be able to demonstrate the following knots:" }
  #tasks {
  #  [
  #    Task.make(:order => 1, :description => "reef knot"),
  #    Task.make(:order => 2, :description => "clove hitch"),
  #    Task.make(:order => 3, :description => "rolling hitch"),
  #    Task.make(:order => 4, :description => "sheet bend")
  #  ]
  #}
end

Task.blueprint do
  activity { Activity.make }
  order { 1 }
  description { "reef knot" }
end


