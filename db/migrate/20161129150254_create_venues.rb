class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :address
      t.string :city
      t.string :state

      t.timestamps

    end
  end
end
