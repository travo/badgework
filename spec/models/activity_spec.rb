require 'spec_helper'

describe Activity do

  let!(:troop)  { Troop.create(:name => '5th Brunswick') }
  let!(:scouts) { Section.create(:name => 'Scouts') }
  let!(:member) { Member.create(name: 'Bob')}
  let!(:award)  { Award.create(title: 'Test Award') }

  describe 'satisfying completion' do

    describe 'when all tasks must be completed' do

      let!(:activity) { Activity.create(awards: [award], title: 'Activity One', requirement: 3) }
      let!(:t1) { Task.create(activity: activity, order: 1, description: 'Test')}
      let!(:t2) { Task.create(activity: activity, order: 2, description: 'Test')}
      let!(:t3) { Task.create(activity: activity, order: 3, description: 'Test')}

      it 'correctly indicates completion (some done)' do
        member.complete!(t1)
        expect(member.completed?(activity)).to be_false
      end

      it 'correctly indicates completion (all done)' do
        member.complete!(t1)
        member.complete!(t2)
        member.complete!(t3)
        expect(member.completed?(activity)).to be_true
      end

    end

    describe 'when one task is compulsory and one (out of two others) optional' do

      let!(:activity) { Activity.create(awards: [award], title: 'Activity One', requirement: 2) }
      let!(:t1) { Task.create(activity: activity, order: 1, description: 'Test', required: true)}
      let!(:t2) { Task.create(activity: activity, order: 1, description: 'Test', required: nil)}
      let!(:t3) { Task.create(activity: activity, order: 1, description: 'Test', required: nil)}

      it 'correctly indicates incompletion (one optional done)' do
        member.complete!(t2)
        expect(member.completed?(activity)).to be_false
      end

      it 'correctly indicates incompletion (two optional done)' do
        member.complete!(t2)
        member.complete!(t3)
        expect(member.completed?(activity)).to be_false
      end

      it 'correctly indicates completion (requirement satisfied)' do
        member.complete!(t1)
        member.complete!(t3)
        expect(member.completed?(activity)).to be_true
      end

    end

  end

end
