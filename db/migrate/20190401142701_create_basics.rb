class CreateBasics < ActiveRecord::Migration[5.2]
  def change
    create_table :basics do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.string :classs
      t.string :race
      t.string :height

      t.timestamps
    end
  end
end
