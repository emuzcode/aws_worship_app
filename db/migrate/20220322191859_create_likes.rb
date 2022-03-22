class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
    add_index :likes, [:user_id, :created_at]
  end
end
