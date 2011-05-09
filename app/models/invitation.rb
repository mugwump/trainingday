class Invitation < ActiveRecord::Base
  include ActiveRecord::Transitions

  belongs_to :user
  belongs_to :team

  validates_presence_of :user, :team

  state_machine do
    state :invited # initial state
    state :declined
    state :accepted

    event :accept do
      transitions :to => :accepted, :from => :invited, :on_transition => :add_member
    end

    event :decline do
      transitions :to => :declined, :from => :invited
    end

  end

  def add_member
    team.members << user
  end
end
