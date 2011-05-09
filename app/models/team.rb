class Team < ActiveRecord::Base
  belongs_to :coach, :class_name => "User", :foreign_key => "coach_id"
  has_many :invitations

  has_and_belongs_to_many :members, :class_name => "User"

  validates_presence_of :name
  validates_presence_of :coach
end
