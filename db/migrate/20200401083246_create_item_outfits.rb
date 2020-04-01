class CreateItemOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :item_outfits do |t|
      t.references :item, foreign_key: true
      t.references :outfit, foreign_key: true
      t.timestamps
    end
  end
end
