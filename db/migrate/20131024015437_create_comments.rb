class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :blogger
      t.references :dish
      t.string :b_name, :null => false
      t.string :d_name, :null => false
      t.string :content, :null => false

      t.timestamps
    end
  end
end
