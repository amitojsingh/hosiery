class Order < ApplicationRecord
  has_many :orderquantities, dependent: :destroy
   accepts_nested_attributes_for :orderquantities, reject_if: :all_blank, allow_destroy: true
end
