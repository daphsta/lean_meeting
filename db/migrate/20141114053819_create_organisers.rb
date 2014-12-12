class CreateOrganisers < ActiveRecord::Migration
  def change
    create_table :organisers do |t|
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
