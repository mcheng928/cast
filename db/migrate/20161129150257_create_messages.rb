class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :event_id
      t.integer :user_id
      t.datetime :datetime
      t.integer :likes
      t.text :body

      t.timestamps

    end
  end
end
