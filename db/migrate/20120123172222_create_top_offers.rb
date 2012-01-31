class CreateTopOffers < ActiveRecord::Migration
  def change
    create_table :top_offers do |t|
      t.string :title_headline
      t.string :title_offer
      t.text :description
      t.string :duration
      t.decimal :price
      t.text :link_to_more_info
      t.date :offer_active_from
      t.date :offer_active_until
      t.date :offer_valid_from
      t.date :offer_valid_until
      t.integer :shipping_company_id
      t.has_attached_file :image

      t.timestamps
    end
  end
end
