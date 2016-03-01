class AddMoreFieldsToStylists < ActiveRecord::Migration
  def change
  	add_column :stylists, :primary_title, :string
  	add_column :stylists, :salon_name, :string
  	add_column :stylists, :short_intro, :text
  	add_column :stylists, :salon_phone, :string
  	add_column :stylists, :facebook_link, :string
  	add_column :stylists, :twitter_link, :string
  	add_column :stylists, :instagram_link, :string
  	add_column :stylists, :snapchat_link, :string
  	add_column :stylists, :email_link, :string
  	add_column :stylists, :website_link, :string
  end
end
