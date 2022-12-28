class AddColumn < ActiveRecord::Migration[7.0]
  def up
    add_column :books, :book_code, :integer
  end
  def down 
    remove_column :books, :book_code
  end
end
