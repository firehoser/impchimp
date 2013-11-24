class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :name
      t.decimal :lat, :precision => 7
      t.decimal :lng, :precision => 7
      t.timestamps
    end
  end
end
