class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :url, null: false
      t.references :imageable, polymorphic: true, index: true
    end
  end
end
