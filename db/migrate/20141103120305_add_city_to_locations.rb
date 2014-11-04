class AddCityToLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :city, :string 
  	add_column :locations, :name, :string
  end
end
