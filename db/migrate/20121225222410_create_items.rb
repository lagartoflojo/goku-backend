class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.references :collection

      t.timestamps
    end
    add_index :items, :collection_id
  end
end
