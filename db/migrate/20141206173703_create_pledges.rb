class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.integer :contribution
      t.integer :backer_id
      t.integer :reward_id

      t.timestamps
    end
  end
end
