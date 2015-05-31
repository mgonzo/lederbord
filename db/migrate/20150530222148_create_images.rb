class CreateImages < ActiveRecord::Migration
  def change

    create_table :images do |t|
      t.integer :user_id, null: false
      t.integer :group_id, null: false
      t.string :title, null: false
      t.string :resource_id, null: false
      t.string :phash, null: false
      t.timestamps null: false
    end

    add_foreign_key :images, :users
    add_foreign_key :images, :groups
  end
end
