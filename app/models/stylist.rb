class Stylist < ActiveRecord::Base
	belongs_to :user
	has_many :photos

	geocoded_by :address
	after_validation :geocode, if: :address_changed?

	validates :stylist_name, presence: true, length: {maximum: 75}
	validates :about_the_stylist, presence: true, length: {maximum: 500}
	validates :services_provided, presence: true
	validates :address, presence: true

end
