class AddSlugToStylists < ActiveRecord::Migration
  def change
  	add_column :stylists, :slug, :string
  	add_index	:stylists, :slug, unique: true
  end
end
