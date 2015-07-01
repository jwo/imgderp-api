class AddLikesToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :likes, :integer, default: 0
  end
end
