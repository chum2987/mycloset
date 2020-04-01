class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :image, null: false
      t.string :gender, null: false
      t.string :clothes, null: false
      t.string :color, null: false
      t.string :brand
      t.text :text
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
