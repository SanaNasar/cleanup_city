class AddNoteToImages < ActiveRecord::Migration
  def change
    add_attachment :images, :note
  end
end
