class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name
      t.string :short_name
      t.integer :shipping_company_id
      t.integer :ship_type_id
      t.integer :sid

      t.timestamps
    end
  end
end
