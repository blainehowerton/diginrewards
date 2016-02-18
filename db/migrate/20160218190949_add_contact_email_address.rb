class AddContactEmailAddress < ActiveRecord::Migration
  def change
  	add_column :causes, :contact_email, :string
  	add_column :users, :contact_email, :string
  	add_column :retailers, :contact_email, :string
  end
end
