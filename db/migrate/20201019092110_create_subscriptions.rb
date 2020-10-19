class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :category
      t.integer :date
      t.integer :amount

      t.timestamps
    end
  end
end
