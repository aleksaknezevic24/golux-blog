class CreateFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :blog_id

      t.timestamps
    end
  end
end
