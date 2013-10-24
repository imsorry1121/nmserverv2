class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name, :null => false
      t.references :store
      t.string :store, :null => false
      t.integer :price, :null => false
      t.binary :img, :null => false
      t.string :including
      t.string :intro
      t.timestamps
    end
  end
end
