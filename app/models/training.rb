class Training < ActiveRecord::Base

  validates_presence_of :tickle_expression
  validates_presence_of :time



end
