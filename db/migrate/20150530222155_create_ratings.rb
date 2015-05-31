class CreateRatings < ActiveRecord::Migration
  def change

    create_table :ratings do |t|
      t.integer :user_id, null: false
      t.integer :group_id, null: false
      t.integer :image_id, null: false
      t.integer :value, null: false
      t.timestamps null: false
    end

    add_foreign_key :ratings, :users
    add_foreign_key :ratings, :groups
    add_foreign_key :ratings, :images
  end
end
