class CreateCruiseTypes < ActiveRecord::Migration
  def change
    create_table :cruise_types do |t|
      t.string :description
      t.string :short_description

      t.timestamps
    end
    #Populate default data
    CruiseType.create :id => 1, :description => "Hochseekreuzfahrtschiff", :short_description => "Hochsee"
    CruiseType.create :id => 2, :description => "Flusskreuzfahrtschiff", :short_description => "Fluss"
  end
end
