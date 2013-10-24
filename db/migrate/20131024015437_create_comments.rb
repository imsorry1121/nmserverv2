class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content, :null => false
      t.integer :blogger_id
      t.integer :dish_id

      t.timestamps
    end
  end
end
