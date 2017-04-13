ActiveAdmin.register Customer do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
permit_params :CustomerID, :FirstName, :LastName, :UserName, :Password, :Address, :City, :PostalCode, :Phone, :Email, :Province

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
config.batch_actions = true


index do
    selectable_column
    id_column
    column :username
    column :email
    column :created_at
    actions
  end

show do
  panel "Order History" do
    table_for(customer.order) do
      column("Order", :sortable => :id) {|order| link_to "##{order.id}", admin_order_path(order) }
      column("State")                   {|order| status_tag(order.state) }
      column("Date", :sortable => :checked_out_at){|order| pretty_format(order.created_at) }
      column("Total")                   {|order| number_to_currency order.subTotal }
    end
  end
end

end
