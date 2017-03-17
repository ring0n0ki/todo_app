class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title, null: false
      t.datetime :target_at, null: true
      t.datetime :completed_at, null: true
      t.integer :user_id, null: true

      t.timestamps
    end
  end
end
