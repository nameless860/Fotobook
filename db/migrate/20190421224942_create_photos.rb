class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|

      t.string :title
      t.string :description
      t.boolean :sharing_mode, null: false
      t.references :user, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
