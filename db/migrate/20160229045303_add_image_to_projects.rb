class AddImageToProjects < ActiveRecord::Migration
  def change

  	add_attachment :transactions, :image
  	
  end
end
