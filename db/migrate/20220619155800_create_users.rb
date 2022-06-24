class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :email
      t.string :password
      t.boolean :active
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
