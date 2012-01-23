class CreateTopOffers < ActiveRecord::Migration
  def change
    create_table :top_offers do |t|
      t.string :description
      t.string :detailed_description
      t.integer :minimum_number_of_days
      t.integer :maximum_number_of_days
      t.decimal :price
      t.string :link_to_more_info
      t.date :offer_start_date
      t.date :offer_end_date
      t.date :request_offer_from
      t.date :request_offer_until
      t.integer :shipping_company_id
      t.integer :ship_id
      t.has_attached_file :image

      t.timestamps
    end
  end
end
