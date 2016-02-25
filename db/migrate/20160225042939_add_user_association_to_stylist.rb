class AddUserAssociationToStylist < ActiveRecord::Migration
  def change
  	add_column :stylists, :user, :references
  end
end
