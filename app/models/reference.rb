class Reference < ApplicationRecord
  belongs_to :requisition, inverse_of: :references
end
