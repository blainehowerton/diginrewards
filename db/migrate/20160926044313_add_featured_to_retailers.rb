class AddFeaturedToRetailers < ActiveRecord::Migration
  def change
    add_column :retailers, :featured, :boolean
  end
end
