require 'spec_helper'

describe Troop do

  context "when bootstrapping" do

    it "should be a Troop" do
      Troop.new.should be_a(Troop)
    end

  end

end