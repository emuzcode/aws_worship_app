class CreateSingers < ActiveRecord::Migration[6.0]
  def change
    create_table :singers do |t|
      t.string :name_jp
      t.string :name_en
    end
  end
end
