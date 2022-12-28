class CreateSupplierHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :supplier_histories do |t|
      t.references :supplier_accounts, foreign_key: true
      t.timestamps
    end
  end
end
