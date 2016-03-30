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
    remove_column :transactions, :cause_split, :decimal
    remove_column :transactions, :retailer_split, :decimal
    add_column :transactions, :retailer_split, :decimal, :precision=>5,:scale=>2
    add_column :transactions, :cause_split, :decimal, :precision=>5,:scale=>2

    change_column :causes, :split, :decimal, :precision=>5,:scale=>2
    change_column :retailers, :split, :decimal, :precision=>5, :scale=>2

  end
end
