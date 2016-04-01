class RetailerSplitFields < ActiveRecord::Migration
  def change
  	rename_column("retailers", "split", "fee_split")
  	add_column :retailers, :cause_split, :decimal, precision: 5, scale: 2
  	add_column :retailers, :user_split, :decimal, precision: 5, scale: 2
  end
end
