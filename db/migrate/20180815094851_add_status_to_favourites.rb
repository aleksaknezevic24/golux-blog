class AddStatusToFavourites < ActiveRecord::Migration[5.2]
  def change
    add_column :favourites, :status, :integer, default: 0
  end
end
