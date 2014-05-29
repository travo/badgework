require 'spec_helper'

describe Member do

  let!(:member)   { Member.create(name: 'Bob') }
  let!(:target)   { Target.create(title: 'Test Award') }
  let!(:activity) { Activity.create(targets: [target], title: 'Activity One', requirement: 1) }
  let!(:task)     { Task.create(activity: activity, order: 1, description: 'Test') }

  context 'when achieving a task' do

    it 'records the achievement' do
      member.complete!(task)
      expect(member.achievements.count).to eql(1)
    end

  end

  context 'when reaching a target' do

    it 'acknowledges the award' do
      member.complete!(task)
      member.completed?(target)
      expect(member.awards.map(&:target)).to include(target)
    end

  end

end
