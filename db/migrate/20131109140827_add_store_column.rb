class AddStoreColumn < ActiveRecord::Migration
  def change
  	add_column :stores, :intro, :text
  	add_column :stores, :fb_url, :text
  end
end
