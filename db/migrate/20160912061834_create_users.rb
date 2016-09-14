class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.text :password_digest
      t.string :avatar
      t.string :gender
      t.string :birthdate
      t.string :location
      t.text :about

      t.timestamps
    end
  end
end
