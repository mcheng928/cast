class CreateVotingBoards < ActiveRecord::Migration
  def change
    create_table :voting_boards do |t|
      t.integer :venue_id
      t.integer :event_id
      t.integer :vote

      t.timestamps

    end
  end
end
