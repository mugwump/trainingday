class CreateTeammembers < ActiveRecord::Migration
  def self.up
    create_table :teams_users, :id => false  do |t|

      t.references :team, :user

    end
  end

  def self.down
    drop_table :teams_users
  end
end
