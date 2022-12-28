class AddColumnToAuthor < ActiveRecord::Migration[7.0]
  def up
    add_column :authors, :author_id, :integer
  end
  def down 
    remove_column :authors, :author_id
  end

end
