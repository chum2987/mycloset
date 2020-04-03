class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user
      t.integer :outfit
      t.timestamps
    end
  end
end
