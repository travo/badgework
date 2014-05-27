require 'spec_helper'

describe Target do

  let!(:troop)  { Troop.create(:name => '5th Brunswick') }
  let!(:scouts) { Section.create(:name => 'Scouts') }
  let!(:member) { Member.create(name: 'Bob')}

  describe 'satisfying completion' do

    describe 'when all activities must be completed' do

      let!(:ultimate) { Target.create(title: 'Significant award') }

      let!(:award)  { Target.create(title: 'Test Award', requirement: 3, prerequisite: ultimate) }
      let!(:bward)  { Target.create(title: 'Test Award', requirement: 1, prerequisite: ultimate) }
      let!(:a1) { Activity.create(targets: [award], title: 'Activity One', requirement: 1) }
      let!(:t1) { Task.create(activity: a1, order: 1, description: 'Test', required: true)}
      let!(:a2) { Activity.create(targets: [award], title: 'Activity Two', requirement: 1) }
      let!(:t2) { Task.create(activity: a2, order: 1, description: 'Test', required: true)}
      let!(:a3) { Activity.create(targets: [award], title: 'Activity Three', requirement: 1) }
      let!(:t3) { Task.create(activity: a3, order: 1, description: 'Test', required: true)}
      let!(:a4) { Activity.create(targets: [bward], title: 'Random', requirement: 1) }
      let!(:t4) { Task.create(activity: a4, order: 1, description: 'Test', required: true)}

      it 'correctly indicates completion (some done)' do
        member.complete!(t1)
        expect(member.completed?(award)).to be_false
      end

      it 'correctly indicates completion (all done)' do
        member.complete!(t1)
        member.complete!(t2)
        member.complete!(t3)
        member.complete!(t4)
        expect(member.completed?(award)).to be_true
      end

      it 'doesnt include odd dependencies' do
        member.complete!(t1)
        member.complete!(t2)
        member.complete!(t3)
        member.complete!(t4)
        expect(award.send(:completed_dependencies, member.achievements.for(award))).not_to include(a4)
        expect(award.send(:completed_dependencies, member.achievements.for(award))).to eql([a1, a2, a3])
      end

      it 'recognises prerequisites correctly' do
        member.complete!(t1)
        member.complete!(t2)
        member.complete!(t3)
        member.complete!(t4)
        expect(member.completed?(a1)).to be_true
        expect(member.completed?(a2)).to be_true
        expect(member.completed?(ultimate)).to be_true
      end

    end

    describe 'when all activites — and required tasks must be completed' do

      let!(:award)  { Target.create(title: 'Test Award', requirement: 2) }
      let!(:a1) { Activity.create(targets: [award], title: 'Activity One', requirement: 1) }
      let!(:t1) { Task.create(activity: a1, order: 1, description: 'Test')}
      let!(:a2) { Activity.create(targets: [award], title: 'Activity Two', requirement: 2) }
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

      let!(:award)  { Target.create(title: 'Test Award', requirement: 2) }
      let!(:a1) { Activity.create(targets: [award], title: 'Activity One', required: true, requirement: 1) }
      let!(:t1) { Task.create(activity: a1, order: 1, description: 'Test', required: true)}
      let!(:a2) { Activity.create(targets: [award], title: 'Activity Two', required: false, requirement: 1) }
      let!(:t2) { Task.create(activity: a2, order: 1, description: 'Test', required: true)}
      let!(:a3) { Activity.create(targets: [award], title: 'Activity Three', required: false, requirement: 1) }
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
