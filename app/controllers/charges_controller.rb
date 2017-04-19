class ChargesController < ApplicationController
  def new
    order = Order.last()

    @testValue = order.subTotal
    @testTax = (order.subTotal - order.Total).round(2)
    @testTotal = order.Total
end

def create
  # Amount in cents
order = Order.last()


  @amount = (order.subTotal * 100).to_i

session[:total] = order.subTotal



  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end
