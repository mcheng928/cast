class CreateInviteLists < ActiveRecord::Migration
  def change
    create_table :invite_lists do |t|
      t.integer :event_id
      t.integer :invitee_id

      t.timestamps

    end
  end
end
