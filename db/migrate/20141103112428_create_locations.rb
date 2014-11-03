class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.string :name
      	t.timestamps
      	#add_column :locations, :city, :string #esto es lo mismo que la linea 3 y 4
    end
  end
end
