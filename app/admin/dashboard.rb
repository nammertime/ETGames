ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }


  content :title => proc{ I18n.t("active_admin.dashboard") } do

    columns do

      column do
        panel "Recent Orders" do
          table_for Order.complete.order('id desc').limit(10) do
            column("State")   {|order| status_tag(order.state)                                    }
            column("Customer"){|order| link_to(order.customer.Email, admin_customer_path(order.customer)) }
            column("Total")   {|order| number_to_currency order.subTotal                       }
          end
        end
      end

      column do
        panel "Recent Customers" do
          table_for Customer.order('id desc').limit(10).each do |customer|
            column(:email)    {|customer| link_to(customer.Email, admin_customer_path(customer)) }
          end
        end
      end

    end # columns



    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
