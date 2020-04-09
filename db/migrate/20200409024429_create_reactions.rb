class CreateReactions < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.string :type

      t.timestamps
    end

    add_index :reactions, [:type, :post_id]
  end
end
