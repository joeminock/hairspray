class AddFieldsToStylist < ActiveRecord::Migration
  def change
    add_column :stylists, :latitude, :float
    add_column :stylists, :longitude, :float
  end
end
