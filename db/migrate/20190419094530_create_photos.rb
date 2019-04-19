class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title, limit: 140, null: false
      t.string :description, limit: 300, null: false
      t.boolean :sharing_mode, null: false
      t.references :user, foreign_key: true
    end
  end
end
