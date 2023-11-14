class AddAddressToRestaurant < ActiveRecord::Migration[7.1]
  def change
    # adds the column address to the table restaurants
    add_column :restaurants, :address, :string
  end
end
