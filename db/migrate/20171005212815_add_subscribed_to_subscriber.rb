class AddSubscribedToSubscriber < ActiveRecord::Migration[5.1]
  def change
    add_column :subscribers, :subscribed, :boolean, default: true
  end
end
