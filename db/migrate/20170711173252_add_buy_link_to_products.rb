class AddBuyLinkToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :buy_link, :string
  end
end
