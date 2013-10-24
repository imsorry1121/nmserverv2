class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name, :null => false
      t.string :location, :null => false
      t.string :phone
      t.string :otime, :null => false
      t.string :ctime, :null => false
      t.binary :img1, :null => false
      t.binary :img2
      t.binary :img3

      t.timestamps
    end
  end
end
