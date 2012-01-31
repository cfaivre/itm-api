# encoding: utf-8
class CreateShippingCompanies < ActiveRecord::Migration
  def change
    create_table :shipping_companies do |t|
      t.string :name
      t.integer :rid
      t.integer :on_board_credit_percentage
      t.text :on_board_credit_method_received

      t.timestamps
    end
    #Populate default data
    ShippingCompany.create :name => "AIDA Cruises", :rid => "1"
    ShippingCompany.create :name => "Deilmann Kreuzfahrten", :rid => "2"
    ShippingCompany.create :name => "Nicko Tours", :rid => "4"
    ShippingCompany.create :name => "Costa Kreuzfahrten", :rid => "6"
    ShippingCompany.create :name => "Croisi Europe", :rid => "7"
    ShippingCompany.create :name => "Hurtigruten", :rid => "8"
    ShippingCompany.create :name => "Phoenix", :rid => "10"
    ShippingCompany.create :name => "Norwegian Cruise Line", :rid => "11"
    ShippingCompany.create :name => "TransOcean", :rid => "12"
    ShippingCompany.create :name => "Carnival Cruise Lines", :rid => "13"
    ShippingCompany.create :name => "Viking", :rid => "14"
    ShippingCompany.create :name => "MSC Kreuzfahrten", :rid => "16"
    ShippingCompany.create :name => "Hapag-Lloyd Kreuzfahrten", :rid => "18"
    ShippingCompany.create :name => "Hansa Kreuzfahrten", :rid => "19"
    ShippingCompany.create :name => "Cunard", :rid => "20"
    ShippingCompany.create :name => "Holland America", :rid => "22"
    ShippingCompany.create :name => "Royal Caribbean Cruise Line", :rid => "23"
    ShippingCompany.create :name => "Windstar Cruises", :rid => "25"
    ShippingCompany.create :name => "Delphin Kreuzfahrten", :rid => "27"
    ShippingCompany.create :name => "Walt Disney's Cruise Line", :rid => "28"
    ShippingCompany.create :name => "Seabourn", :rid => "29"
    ShippingCompany.create :name => "Celebrity Cruises", :rid => "30"
    ShippingCompany.create :name => "Sea Cloud Cruises", :rid => "34"
    ShippingCompany.create :name => "Regent Seven Seas Cruises", :rid => "35"
    ShippingCompany.create :name => "Silversea Cruises", :rid => "36"
    ShippingCompany.create :name => "Crystal Cruises", :rid => "37"
    ShippingCompany.create :name => "Nautilus Seereisen", :rid => "40"
    ShippingCompany.create :name => "Plantours & Partner", :rid => "41"
    ShippingCompany.create :name => "Princess Cruises", :rid => "42"
    ShippingCompany.create :name => "Cruceros Australis", :rid => "46"
    ShippingCompany.create :name => "Quark Expeditions", :rid => "47"
    ShippingCompany.create :name => "Louis Cruise Lines", :rid => "48"
    ShippingCompany.create :name => "A-ROSA", :rid => "49"
    ShippingCompany.create :name => "China Regal Cruises", :rid => "50"
    ShippingCompany.create :name => "SeaDream Yacht Club", :rid => "52"
    ShippingCompany.create :name => "Color Line", :rid => "53"
    ShippingCompany.create :name => "Lüftner Cruises", :rid => "54"
    ShippingCompany.create :name => "Compagnie du Ponant", :rid => "60"
    ShippingCompany.create :name => "Clipper Cruises", :rid => "61"
    ShippingCompany.create :name => "Club Med Cruises", :rid => "68"
    ShippingCompany.create :name => "Oceania Cruises", :rid => "69"
    ShippingCompany.create :name => "Gebeco", :rid => "72"
    ShippingCompany.create :name => "TUI", :rid => "74"
    ShippingCompany.create :name => "Windjammer Barefoot Cruises", :rid => "76"
    ShippingCompany.create :name => "Château la Chassagne", :rid => "77"
    ShippingCompany.create :name => "Neckermann", :rid => "78"
    ShippingCompany.create :name => "Olympia Reisen", :rid => "82"
    ShippingCompany.create :name => "Oceanstar", :rid => "83"
    ShippingCompany.create :name => "Aranui Cruises", :rid => "85"
    ShippingCompany.create :name => "VSOE Orient-Express", :rid => "86"
    ShippingCompany.create :name => "Inmaris", :rid => "88"
    ShippingCompany.create :name => "Nomade Yachting Bora Bora", :rid => "89"
    ShippingCompany.create :name => "Riva Tours", :rid => "90"
    ShippingCompany.create :name => "Sirene Cruises", :rid => "91"
    ShippingCompany.create :name => "Bahriyeli Yachtcharter", :rid => "92"
    ShippingCompany.create :name => "ResidenSea", :rid => "93"
    ShippingCompany.create :name => "North Star Cruises", :rid => "95"
    ShippingCompany.create :name => "Monarch Classic Cruises", :rid => "102"
    ShippingCompany.create :name => "DERTOUR Flusskreuzfahrten", :rid => "103"
    ShippingCompany.create :name => "Skorpios", :rid => "104"
    ShippingCompany.create :name => "Club Magic Life", :rid => "106"
    ShippingCompany.create :name => "Poseidon Arctic Voyages", :rid => "108"
    ShippingCompany.create :name => "Sailing-Classics", :rid => "109"
    ShippingCompany.create :name => "DCS Touristik", :rid => "110"
    ShippingCompany.create :name => "Azamara Club Cruises", :rid => "111"
    ShippingCompany.create :name => "Stella Maris Yachting", :rid => "112"
    ShippingCompany.create :name => "Nees Reisen", :rid => "116"
    ShippingCompany.create :name => "OFT Reisen", :rid => "117"
    ShippingCompany.create :name => "1A Vista Reisen", :rid => "119"
    ShippingCompany.create :name => "Gvidon Tours", :rid => "120"
    ShippingCompany.create :name => "Majestic America Line", :rid => "121"
    ShippingCompany.create :name => "ETI", :rid => "122"
    ShippingCompany.create :name => "Transorient", :rid => "123"
    ShippingCompany.create :name => "Star Clippers", :rid => "124"
    ShippingCompany.create :name => "The Adventure Fleet", :rid => "125"
    ShippingCompany.create :name => "Ikarus Tours", :rid => "126"
    ShippingCompany.create :name => "Schlienz-Reisen", :rid => "127"
    ShippingCompany.create :name => "Elegant Cruises & Tours", :rid => "130"
    ShippingCompany.create :name => "Premicon Line", :rid => "131"
    ShippingCompany.create :name => "TUI Cruises", :rid => "133"
    ShippingCompany.create :name => "Royal Holidays", :rid => "134"
    ShippingCompany.create :name => "The Majestic Line", :rid => "135"
    ShippingCompany.create :name => "Pandaw River Cruises", :rid => "136"
    ShippingCompany.create :name => "Lernidee", :rid => "137"
    ShippingCompany.create :name => "Hansa Touristik", :rid => "139"
    ShippingCompany.create :name => "Bavaria Fernreisen", :rid => "140"
    ShippingCompany.create :name => "Variety Cruises", :rid => "141"
    ShippingCompany.create :name => "Oberoi Hotels & Resorts", :rid => "142"
    ShippingCompany.create :name => "Helios Reisen", :rid => "144"
    ShippingCompany.create :name => "DERTOUR Kreuzfahrten", :rid => "145"
    ShippingCompany.create :name => "Colibri UmweltReisen", :rid => "146"
    ShippingCompany.create :name => "Iberostar", :rid => "147"
    ShippingCompany.create :name => "Coral Princess Cruises", :rid => "148"
    ShippingCompany.create :name => "Advenation", :rid => "149"
    ShippingCompany.create :name => "ES SELECT", :rid => "150"
    ShippingCompany.create :name => "Polar Kreuzfahrten", :rid => "151"
    ShippingCompany.create :name => "Cruising Reisen", :rid => "152"
    ShippingCompany.create :name => "Meier´s Weltreisen", :rid => "153"
    ShippingCompany.create :name => "Paul Gauguin Cruises", :rid => "154"
    ShippingCompany.create :name => "Costa Kreuzfahrten", :rid => "156"
    ShippingCompany.create :name => "MSC Kreuzfahrten", :rid => "157"
    ShippingCompany.create :name => "nordic holidays", :rid => "159"
    ShippingCompany.create :name => "Vista Travel", :rid => "161"
    ShippingCompany.create :name => "Pullmantur Cruises", :rid => "162"
  end
end
