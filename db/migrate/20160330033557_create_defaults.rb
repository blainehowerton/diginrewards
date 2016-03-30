class CreateDefaults < ActiveRecord::Migration
  def change
    create_table :defaults do |t|

		t.decimal :cause_split, precision: 5,  scale: 2, default: 0.03, null: false
	  	t.decimal :retailer_split, precision: 5,  scale: 2, default: 0.03, null: false
	  	t.decimal :fee_split, precision: 5,  scale: 2, default: 0.03, null: false
        t.timestamps null: false
    end
    remove_column :transactions, :user_split, :decimal
    add_column :transactions, :fee_split, :decimal, :precision=>5,:scale=>2
  end
end
