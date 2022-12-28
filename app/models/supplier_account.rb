class SupplierAccount < ApplicationRecord
  belongs_to :supplier
  has_one :supplier_history
end
