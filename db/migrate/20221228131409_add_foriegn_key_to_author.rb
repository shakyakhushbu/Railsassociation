class AddForiegnKeyToAuthor < ActiveRecord::Migration[7.0]
  def up
    add_reference :books, :author
    add_foreign_key :books, :authors
  end
  def down
    remove_reference :books, :author
    remove_foreign_key :books, :authors
  end
end
