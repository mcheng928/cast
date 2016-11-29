class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :host_id
      t.datetime :start_datetime
      t.string :end_datetime

      t.timestamps

    end
  end
end
