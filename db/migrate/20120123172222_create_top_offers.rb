class CreateTopOffers < ActiveRecord::Migration
  def change
    create_table :top_offers do |t|
      t.string :title
      t.string :description
      t.integer :minimum_number_of_days
      t.integer :maximum_number_of_days
      t.decimal :price
      t.text :link_to_more_info
      t.date :offer_active_from
      t.date :offer_active_until
      t.date :offer_valid_from
      t.date :offer_valid_until
      t.integer :shipping_company_id
      t.integer :ship_id
      t.has_attached_file :image

      t.timestamps
    end
  end
end
