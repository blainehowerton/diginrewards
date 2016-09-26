class AddOtherFieldsToRetailers < ActiveRecord::Migration
  def change
    add_column :retailers, :headline, :string
    add_column :retailers, :web_address, :string
    add_column :retailers, :description, :text
    add_column :retailers, :video_embed, :string
  end
end
