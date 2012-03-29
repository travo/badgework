require 'spec_helper'

describe Member do

  let(:member) { Member.make! }
  let(:task) { Task.make! }

  context "when achieving a task" do

    it "records the achievement" do
      member.achieve!(task)
      member.achievements.count.should == 1
    end


  end

end
