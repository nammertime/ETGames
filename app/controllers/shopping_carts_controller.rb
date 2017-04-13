class ShoppingCartsController < ApplicationController
include SessionsHelper
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

def remove

items = ShoppingCartItem.find(params[:product_id])
  items.destroy
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

def processOrder
@cart = ShoppingCart.last


@current_user ||= Customer.find_by(UserName: session[:user_id])
province = @current_user.Province

@provinceID = Province.where(Name: province).first()

session[:province] = province



order = Order.create(TaxRate: @provinceID.GST, Total: @cart.total, subTotal: @cart.total * (@provinceID.GST + 1), shopping_cart_id:@cart.id, customer_id: @current_user.id )
@cart = ShoppingCart.create
end



end
