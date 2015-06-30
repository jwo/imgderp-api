class AddPermalinkToImages < ActiveRecord::Migration
  def change
    add_column :images, :permalink, :string
  end
end
