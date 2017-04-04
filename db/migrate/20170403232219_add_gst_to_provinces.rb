class AddGstToProvinces < ActiveRecord::Migration[5.0]
  def change
    add_column :provinces, :GST, :float
    add_column :provinces, :PST, :float
    add_column :provinces, :HST, :float
    remove_column :provinces, :Tax, :float
  end
end
