class Stylist < ActiveRecord::Base
	belongs_to :user

	validates :stylist_name, presence: true, length: {maximum: 75}
	validates :about_the_stylist, presence: true, length: {maximum: 500}
	validates :services_provided, presence: true
	validates :address, presence: true
	validates :works_in_salon, presence: true
	validates :works_in_office, presence: true
	validates :works_in_home, presence: true
	


end
