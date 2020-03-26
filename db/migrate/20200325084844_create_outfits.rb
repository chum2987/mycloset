class CreateOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :outfits do |t|
      t.text :image, null: false
      t.text :text
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
