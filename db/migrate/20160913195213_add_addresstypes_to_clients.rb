class AddAddresstypesToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :route, :string
    add_column :clients, :streetnumber, :string
    add_column :clients, :sublocality, :string
    add_column :clients, :country, :string
    add_column :clients, :countryshort, :string
    add_column :clients, :state, :string
  end
end
