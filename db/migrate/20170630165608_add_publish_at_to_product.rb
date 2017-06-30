class AddPublishAtToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :publish_at, :datetime, default: -> { 'CURRENT_TIMESTAMP' }
  end
end
