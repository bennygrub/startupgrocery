class CreateProductSubmits < ActiveRecord::Migration[5.1]
  def change
    create_table :product_submits do |t|
      t.string :name
      t.string :email
      t.string :product_name
      t.text :description
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
