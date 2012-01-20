class CreateShipTypes < ActiveRecord::Migration
  def change
    create_table :ship_types do |t|
      t.string :description
      t.string :short_description

      t.timestamps
    end
    #Populate default data
    ShipType.create :id => 1, :description => "Hochseekreuzfahrtschiff" :short_description => "Hochsee"
    ShipType.create :id => 2, :description => "Flusskreuzfahrtschiff" :short_description => "Fluss"
  end
end
