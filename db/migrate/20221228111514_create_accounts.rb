class CreateAccounts < ActiveRecord::Migration[7.0]
  def up
    create_table :accounts do |t|
      t.integer :account_number
      t.references :users, foreign_key: true
      t.timestamps
    end
  end
  def down 
    drop_table :accounts
  end
end
