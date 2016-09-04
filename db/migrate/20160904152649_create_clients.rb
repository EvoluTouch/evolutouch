class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :firstname
      t.string :name
      t.string :address
      t.string :zipcode
      t.string :city

      t.timestamps
    end
  end
end
