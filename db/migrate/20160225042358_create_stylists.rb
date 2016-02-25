class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.string :stylist_name
      t.text :about_the_stylist
      t.string :services_provided
      t.string :address
      t.boolean :works_in_salon
      t.boolean :works_in_office
      t.boolean :works_in_home

      t.timestamps null: false
    end
  end
end
