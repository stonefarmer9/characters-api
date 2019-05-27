class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.integer :apiKey
      t.string :name
      t.references :basic, foreign_key: true

      t.timestamps
    end
  end
end
