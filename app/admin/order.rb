ActiveAdmin.register Order do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
permit_params :shopping_cart_id, :customer_id, :state
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
menu :priority => 3
  actions :index, :show

  scope :all, :default => true
  scope :in_progress
  scope :complete

  index do
    column("Order", :sortable => :id) {|order| link_to "##{order.id} ", admin_order_path(order) }
    column("State")                   {|order| status_tag(order.state) }
    column("Tax")  {|order| number_to_currency (order.subTotal - order.Total) }
    column("Customer", :user, :sortable => :user_id)
    column("Total")                   {|order| number_to_currency order.subTotal }
  end

  show do
    panel "Invoice" do
      table_for(order.shopping_cart.shopping_cart_items) do |t|
        t.column("Product") {|sitem| auto_link sitem.item.ProductName        }
        t.column("Price")   {|sitem| number_to_currency sitem.item.ProductPrice }
        tr :class => "odd" do
          td "Total:", :style => "text-align: right;"
          td number_to_currency(order.subTotal)
        end
      end
    end
  end

  sidebar :customer_information, :only => :show do
    attributes_table_for order.customer do
      row("User") { auto_link order.customer }
      row :Email
    end
  end

end
