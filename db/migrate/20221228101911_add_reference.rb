class AddReference < ActiveRecord::Migration[7.0]
  def up 
    add_reference :books, :author, foreign_key: true
  end
  def down 
    remove_reference :books, :author
  end
end
