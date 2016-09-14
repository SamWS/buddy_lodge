class CreateHouseImages < ActiveRecord::Migration[5.0]
  def change
    create_table :house_images do |t|
      t.string :image
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
