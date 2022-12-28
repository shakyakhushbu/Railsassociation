class AddRef < ActiveRecord::Migration[7.0]
  def up
    add_foreign_key :books, :authors, column: :book_code, primary_key: :id
  end
  def down 
    remove_foreign_key :books, :authors
  end
end
