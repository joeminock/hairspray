class AddWebAndSocialLinksToStylists < ActiveRecord::Migration
  def change
    add_column :stylists, :salon_website, :string
    add_column :stylists, :salon_facebook, :string
    add_column :stylists, :stylist_website, :string
    add_column :stylists, :stylist_facebook, :string
    add_column :stylists, :stylist_twitter, :string
    add_column :stylists, :stylist_instagram, :string
    add_column :stylists, :stylist_periscope, :string
    add_column :stylists, :stylist_pinterest, :string
    add_column :stylists, :stylist_snapchat, :string
  end
end
