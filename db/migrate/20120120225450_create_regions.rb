# encoding: utf-8
class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name

      t.timestamps
    end
  end
  #Populate default data
  Region.create :name => "Afrika"
  Region.create :name => "Nordamerika"
  Region.create :name => "Südamerika"
  Region.create :name => "Amerika"
  Region.create :name => "Nordpol / Südpol"
  Region.create :name => "Asien"
  Region.create :name => "Australien / Neuseeland"
  Region.create :name => "Südeuropa / Mittelmeer"
  Region.create :name => "Westeuropa"
  Region.create :name => "Nordeuropa"
  Region.create :name => "Osteuropa"
  Region.create :name => "Deutschland"
  Region.create :name => "Südeuropa"
  Region.create :name => "Pazifik"
  Region.create :name => "Mittelamerika / Karibik"
  Region.create :name => "Transreisen"
  Region.create :name => "Weltreise"
end
