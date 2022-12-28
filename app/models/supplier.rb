class Supplier < ApplicationRecord
  has_one :supplier_account
  has_one :supplier_history through: :supplier_account
end
