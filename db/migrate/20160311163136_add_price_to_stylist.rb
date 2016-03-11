class AddPriceToStylist < ActiveRecord::Migration
  def change
    add_column :stylists, :price, :integer
  end
end
