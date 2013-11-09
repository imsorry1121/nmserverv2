class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.binary :img
      t.string :article
      t.string :author

      t.timestamps
    end
  end
end
