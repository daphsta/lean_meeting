class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :room
      t.string :location_address

      t.timestamps
    end
  end
end
