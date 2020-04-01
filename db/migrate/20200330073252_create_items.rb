class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :image, null: false
      t.integer :gender, null: false
      t.integer :clothes, null: false
      t.integer :color, null: false
      t.text :brand
      t.text :text
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
