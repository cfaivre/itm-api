class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.integer :cruise_type_id
      t.integer :region_id
      t.integer :zid

      t.timestamps
    end
  end
end
