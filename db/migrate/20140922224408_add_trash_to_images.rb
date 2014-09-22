class AddTrashToImages < ActiveRecord::Migration
  
  def change
    add_attachment :images, :trash
  end
end
