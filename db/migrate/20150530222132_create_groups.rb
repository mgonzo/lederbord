class CreateGroups < ActiveRecord::Migration
  def change

    create_table :groups do |t|
      t.integer :user_id, null: false
      t.string :groupname, null: false
      t.timestamps null: false
    end

    add_foreign_key :groups, :users
  end
end
