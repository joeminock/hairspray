class AddUserAssociationToStylist < ActiveRecord::Migration
  def change
  	add_reference :stylists, :user
  end
end
