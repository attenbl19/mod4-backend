class CreateUserSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_subscriptions do |t|
      t.integer :user_id
      t.integer :subscription_id
      t.belongs_to :user
      t.belongs_to :subscription

      t.timestamps
    end
  end
end
