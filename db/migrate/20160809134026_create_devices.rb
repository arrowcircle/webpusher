class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.string :token, limit: 64, index: true, null: false
      t.integer :user_id, index: true
      t.integer :device_type_cd, index: true, null: false

      t.timestamps
    end
  end
end
