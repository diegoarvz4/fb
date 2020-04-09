class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :created_by
      t.string :content

      t.timestamps
    end
    add_foreign_key :posts, :users, column: :created_by_id
  end
end
