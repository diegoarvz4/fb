class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.integer :requester_id
      t.integer :requested_id
      t.boolean :active

      t.timestamps
    end

    add_foreign_key :friendships, :users, column: :requester_id
    add_foreign_key :friendships, :users, column: :requested_id
  end
end
