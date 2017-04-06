class ShoppingCartsController < ApplicationController

def create

  @cart = ShoppingCart.last
  @product = Game.find(params[:game_id])
  @cart.add(@product, @product.ProductPrice)
   redirect_back(fallback_location: root_path)

end

def update
items = ShoppingCartItem.find(params[:item_id])


items.quantity = params[:quantity]
items.save

   redirect_back(fallback_location: root_path)
end


def new

@cart = ShoppingCart.create
end

def clear
@cart = ShoppingCart.last
@cart.clear
 redirect_back(fallback_location: root_path)
end

def checkout
@cart = ShoppingCart.last
end


end
