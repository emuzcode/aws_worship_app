class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name_jp
      t.string :name_en
      t.references :singer, foreign_key: true
    end
  end
end
