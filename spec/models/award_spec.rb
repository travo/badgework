require 'spec_helper'

describe Award do

  let!(:troop)  { Troop.create(:name => '5th Brunswick') }
  let!(:scouts) { Section.create(:name => 'Scouts') }
  let!(:member) { Member.create(name: 'Bob')}

  describe 'satisfying completion' do

    describe 'when all activities must be completed' do

      let!(:award)  { Award.create(title: 'Test Award', requirement: 3) }
      let!(:a1) { Activity.create(awards: [award], title: 'Activity One', requirement: 1) }
      let!(:t1) { Task.create(activity: a1, order: 1, description: 'Test', required: true)}
      let!(:a2) { Activity.create(awards: [award], title: 'Activity Two', requirement: 1) }
      let!(:t2) { Task.create(activity: a2, order: 1, description: 'Test', required: true)}
      let!(:a3) { Activity.create(awards: [award], title: 'Activity Three', requirement: 1) }
      let!(:t3) { Task.create(activity: a3, order: 1, description: 'Test', required: true)}

      it 'correctly indicates completion (some done)' do
        member.complete!(t1)
        expect(member.completed?(award)).to be_false
      end

      it 'correctly indicates completion (all done)' do
        member.complete!(t1)
        member.complete!(t2)
        member.complete!(t3)
        expect(member.completed?(award)).to be_true
      end

    end

    describe 'when all activites — and required tasks must be completed' do

      let!(:award)  { Award.create(title: 'Test Award', requirement: 2) }
      let!(:a1) { Activity.create(awards: [award], title: 'Activity One', requirement: 1) }
      let!(:t1) { Task.create(activity: a1, order: 1, description: 'Test')}
      let!(:a2) { Activity.create(awards: [award], title: 'Activity Two', requirement: 2) }
      let!(:t2) { Task.create(activity: a2, order: 1, description: 'Test', required: true)}
      let!(:t3) { Task.create(activity: a2, order: 1, description: 'Test', required: true)}
      let!(:t4) { Task.create(activity: a2, order: 1, description: 'Test', required: false)}

      it 'correctly indicates completion (some done)' do
        member.complete!(t1)
        member.complete!(t2)
        member.complete!(t4)
        expect(member.completed?(award)).to be_false
      end

    end

    describe 'when one activity is compulsory and one (out of two others) optional' do

      let!(:award)  { Award.create(title: 'Test Award', requirement: 2) }
      let!(:a1) { Activity.create(awards: [award], title: 'Activity One', required: true, requirement: 1) }
      let!(:t1) { Task.create(activity: a1, order: 1, description: 'Test', required: true)}
      let!(:a2) { Activity.create(awards: [award], title: 'Activity Two', required: nil, requirement: 1) }
      let!(:t2) { Task.create(activity: a2, order: 1, description: 'Test', required: true)}
      let!(:a3) { Activity.create(awards: [award], title: 'Activity Three', required: nil, requirement: 1) }
      let!(:t3) { Task.create(activity: a3, order: 1, description: 'Test', required: true)}

      it 'correctly indicates incompletion (one optional done)' do
        member.complete!(t2)
        expect(member.completed?(award)).to be_false
      end

      it 'correctly indicates incompletion (two optional done)' do
        member.complete!(t2)
        member.complete!(t3)
        expect(member.completed?(award)).to be_false
      end

      it 'correctly indicates completion (requirement satisfied)' do
        member.complete!(t1)
        member.complete!(t3)
        expect(member.completed?(award)).to be_true
      end

    end


  end


end
