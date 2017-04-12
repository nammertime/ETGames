class ShoppingCart < ApplicationRecord
  acts_as_shopping_cart

  has_one :order
end
