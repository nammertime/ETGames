class Order < ApplicationRecord

    belongs_to :shopping_cart
    belongs_to :customer

    scope :in_progress, ->{where("orders.state = 'in_progress'")}
    scope :complete, -> {where("orders.state = 'complete'")}

end
