class AddCityAndStateToStylists < ActiveRecord::Migration
  def change
    add_column :stylists, :city, :string
    add_column :stylists, :state, :string
  end
end
