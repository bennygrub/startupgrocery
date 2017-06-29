class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :ingredients
      t.float :msrp
      t.string :slug

      t.timestamps
    end
    add_index :products, :slug, unique: true
  end
end
