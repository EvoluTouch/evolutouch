class AddCoordToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :latitude, :decimal
    add_column :clients, :longitude, :decimal
  end
end
