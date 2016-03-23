class AddFieldToStylists < ActiveRecord::Migration
  def change
    add_column :stylists, :active, :boolean
  end
end
