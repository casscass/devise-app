class CreateLollies < ActiveRecord::Migration[5.2]
  def change
    create_table :lollies do |t|
      t.string :name
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
