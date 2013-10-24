class CreateBloggers < ActiveRecord::Migration
  def change
    create_table :bloggers do |t|
      t.string :title
      t.string :name, :null => false
      t.binary :img, :null => false
      t.text :intro, :null => false

      t.timestamps
    end
  end
end
