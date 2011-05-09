require 'spec_helper'

describe Invitation do
  it "should allow participants to be invited to a training. Accepting an invitation should add the user to the training." do
    team = Factory.build(:team)
    team.should be_valid

    participant1 = Factory(:user)
    participant2 = Factory(:user)

    invitation1 = Invitation.new(:user => participant1, :team => team)
    invitation1.save

    invitation2 = Invitation.new(:user => participant2, :team => team)
    invitation2.save

    invitation1.accept
    invitation2.decline

    team.members.should include participant1
    team.members.should_not include participant2

  end
end
