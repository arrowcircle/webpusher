class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.integer :device_id
      t.integer :list_id

      t.timestamps
    end
    add_index :subscriptions, [:list_id, :device_id]
  end
end
