class Requisition < ApplicationRecord
  has_one :profile
  has_many :references, inverse_of: :requisition, :dependent => :delete_all
  accepts_nested_attributes_for :references, reject_if: proc { |attributes| attributes.all? { |key, value| key == "_destroy" || value.blank? } },
  allow_destroy: true

end
