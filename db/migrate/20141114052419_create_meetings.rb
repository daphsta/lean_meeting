class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.references :venue, index: true
      t.references :organiser, index: true
      t.text :description
      t.datetime :time


      t.timestamps
    end
  end
end
