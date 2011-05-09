class CreateTrainings < ActiveRecord::Migration
  def self.up
    create_table :trainings do |t|

      t.string :next_occurence
      t.string :tickle_expression
      t.string :time
      t.text   :place

      t.timestamps
    end
  end

  def self.down
    drop_table :trainings
  end
end
