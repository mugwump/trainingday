require 'spec_helper'

describe Team do
   it "should be invalid without a name and a coach" do

    team = Team.new
    team.should_not be_valid

    team.name = 'some training'
    team.should_not be_valid



    coach = Factory(:user,
                    :email                 => "coach@trainingday.com",
                    :password              => "password",
                    :password_confirmation => "password")

    team.coach = coach

    team.should be_valid

  end
end
