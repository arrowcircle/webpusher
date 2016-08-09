class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.integer :position
      t.integer :devices_count, default: 0

      t.timestamps
    end
  end
end
