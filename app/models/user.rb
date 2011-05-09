class User < ActiveRecord::Base
  include Clearance::User

  has_many :invitations

  has_and_belongs_to_many :trainings
end
