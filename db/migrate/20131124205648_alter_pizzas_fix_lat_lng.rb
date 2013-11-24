class AlterPizzasFixLatLng < ActiveRecord::Migration
  def change
  	change_column :pizzas, :lat, :decimal, 
  		:precision => 15, :scale => 10

  	change_column :pizzas, :lng, :decimal, 
  		:precision => 15, :scale => 10

  end
end
