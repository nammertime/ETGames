class Order < ApplicationRecord

    belongs_to :shopping_cart
    belongs_to :customer

end
