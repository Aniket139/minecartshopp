class AddCloumnToCustomers < ActiveRecord::Migration[7.1]
  def change
    add_column :customers, :name, :string
    add_column :customers, :city, :string
    add_column :customers, :state, :string
    add_column :customers, :country, :string
    add_column :customers, :mobile, :string
  end
end
