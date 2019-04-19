class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :avatar, null: true
      t.string :first_name, limit: 25, null: false
      t.string :last_name, limit: 25, null: false
      t.string :email, limit: 255, null: false
    end

    add_index :users, :email, unique: true
  end
end
