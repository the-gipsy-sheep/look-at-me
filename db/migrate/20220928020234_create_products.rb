class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :description
      t.string :color
      t.string :size
      t.float :price
      t.string :brand
      t.string :images_url
      t.string :photos
      t.string :gender
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
