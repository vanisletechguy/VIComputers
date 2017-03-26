class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.float :cost
      t.integer :availibility

      t.timestamps
    end
  end
end
