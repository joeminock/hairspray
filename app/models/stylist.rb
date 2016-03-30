class Stylist < ActiveRecord::Base
	extend FriendlyId
	friendly_id :slug_candidates, use: :slugged

		def slug_candidates
		    [:stylist_name, :salon_name,
		      [:stylist_name, :salon_name, :salon_phone ]
		    ]
		end
	    #Need to create method for changing URL if stylist changes information
  	

	belongs_to :user
	has_many :photos
	has_many :appointments

	geocoded_by :address
	after_validation :geocode, if: :address_changed?

	validates :stylist_name, presence: true, length: {maximum: 75}
	validates :salon_name, presence: true, length: {maximum: 150}
	validates :short_intro, presence: true, length: {maximum: 140}
	validates :about_the_stylist, presence: true, length: {maximum: 500}
	validates :services_provided, presence: true
	validates :salon_name, presence: true
	validates :salon_phone, presence: true
	validates :address, presence: true
	validates :price, presence: true

end
