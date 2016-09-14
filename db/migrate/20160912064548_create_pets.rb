class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.text :describe
      t.references :listing, foreign_key: true
      t.string :avatar

      t.timestamps
    end
  end
end
