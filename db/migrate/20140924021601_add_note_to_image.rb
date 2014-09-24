class AddNoteToImage < ActiveRecord::Migration
  def change
    add_column :images, :note, :string
  end
end
